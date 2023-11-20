#include "global.h"

static EWRAM_DATA struct {
    const u16 *src;
    u16 *dest;
    u16 size;
} sTilesetDMA3TransferBuffer[20] = {0};

static u8 sTilesetDMA3TransferBufferSize;
static u16 sPrimaryTilesetAnimCounter;
static u16 sPrimaryTilesetAnimCounterMax;
static u16 sSecondaryTilesetAnimCounter;
static u16 sSecondaryTilesetAnimCounterMax;
static void (*sPrimaryTilesetAnimCallback)(u16);
static void (*sSecondaryTilesetAnimCallback)(u16);

static void _InitPrimaryTilesetAnimation(void);
static void _InitSecondaryTilesetAnimation(void);

static const u16 sTilesetAnims_RB_General_Flower_Frame0[] = INCBIN_U16("data/tilesets/primary/rb_general/anim/flower/0.4bpp");
static const u16 sTilesetAnims_RB_General_Flower_Frame1[] = INCBIN_U16("data/tilesets/primary/rb_general/anim/flower/1.4bpp");
static const u16 sTilesetAnims_RB_General_Flower_Frame2[] = INCBIN_U16("data/tilesets/primary/rb_general/anim/flower/2.4bpp");

static const u16* const sTilesetAnims_RB_General_Flower[] = {
    sTilesetAnims_RB_General_Flower_Frame0,
    sTilesetAnims_RB_General_Flower_Frame1,
    sTilesetAnims_RB_General_Flower_Frame2
};

static const u16 sTilesetAnims_RB_General_Water_Soft_Frame0[] = INCBIN_U16("data/tilesets/primary/rb_general/anim/water_soft/0.4bpp");
static const u16 sTilesetAnims_RB_General_Water_Soft_Frame1[] = INCBIN_U16("data/tilesets/primary/rb_general/anim/water_soft/1.4bpp");
static const u16 sTilesetAnims_RB_General_Water_Soft_Frame2[] = INCBIN_U16("data/tilesets/primary/rb_general/anim/water_soft/2.4bpp");
static const u16 sTilesetAnims_RB_General_Water_Soft_Frame3[] = INCBIN_U16("data/tilesets/primary/rb_general/anim/water_soft/3.4bpp");

static const u16* const sTilesetAnims_RB_General_Water_Soft[] = {
    sTilesetAnims_RB_General_Water_Soft_Frame0,
    sTilesetAnims_RB_General_Water_Soft_Frame1,
    sTilesetAnims_RB_General_Water_Soft_Frame2,
    sTilesetAnims_RB_General_Water_Soft_Frame3,
    sTilesetAnims_RB_General_Water_Soft_Frame2,
    sTilesetAnims_RB_General_Water_Soft_Frame1
};

static const u16 sTilesetAnims_RB_General_Water_Hard_Frame0[] = INCBIN_U16("data/tilesets/primary/rb_general/anim/water_hard/0.4bpp");
static const u16 sTilesetAnims_RB_General_Water_Hard_Frame1[] = INCBIN_U16("data/tilesets/primary/rb_general/anim/water_hard/1.4bpp");
static const u16 sTilesetAnims_RB_General_Water_Hard_Frame2[] = INCBIN_U16("data/tilesets/primary/rb_general/anim/water_hard/2.4bpp");
static const u16 sTilesetAnims_RB_General_Water_Hard_Frame3[] = INCBIN_U16("data/tilesets/primary/rb_general/anim/water_hard/3.4bpp");

static const u16* const sTilesetAnims_RB_General_Water_Hard[] = {
    sTilesetAnims_RB_General_Water_Hard_Frame0,
    sTilesetAnims_RB_General_Water_Hard_Frame1,
    sTilesetAnims_RB_General_Water_Hard_Frame2,
    sTilesetAnims_RB_General_Water_Hard_Frame3,
    sTilesetAnims_RB_General_Water_Hard_Frame2,
    sTilesetAnims_RB_General_Water_Hard_Frame1
};

static const u16 sTilesetAnims_RB_Cavern_Water_Hard_Frame0[] = INCBIN_U16("data/tilesets/secondary/rb_cavern/anim/water_hard/0.4bpp");
static const u16 sTilesetAnims_RB_Cavern_Water_Hard_Frame1[] = INCBIN_U16("data/tilesets/secondary/rb_cavern/anim/water_hard/1.4bpp");
static const u16 sTilesetAnims_RB_Cavern_Water_Hard_Frame2[] = INCBIN_U16("data/tilesets/secondary/rb_cavern/anim/water_hard/2.4bpp");
static const u16 sTilesetAnims_RB_Cavern_Water_Hard_Frame3[] = INCBIN_U16("data/tilesets/secondary/rb_cavern/anim/water_hard/3.4bpp");

static const u16* const sTilesetAnims_RB_Cavern_Water_Hard[] = {
    sTilesetAnims_RB_Cavern_Water_Hard_Frame0,
    sTilesetAnims_RB_Cavern_Water_Hard_Frame1,
    sTilesetAnims_RB_Cavern_Water_Hard_Frame2,
    sTilesetAnims_RB_Cavern_Water_Hard_Frame3,
    sTilesetAnims_RB_Cavern_Water_Hard_Frame2,
    sTilesetAnims_RB_Cavern_Water_Hard_Frame1
};

static const u16 sTilesetAnims_RB_Plant_Water_Hard_Frame0[] = INCBIN_U16("data/tilesets/secondary/rb_plant/anim/water_hard/0.4bpp");
static const u16 sTilesetAnims_RB_Plant_Water_Hard_Frame1[] = INCBIN_U16("data/tilesets/secondary/rb_plant/anim/water_hard/1.4bpp");
static const u16 sTilesetAnims_RB_Plant_Water_Hard_Frame2[] = INCBIN_U16("data/tilesets/secondary/rb_plant/anim/water_hard/2.4bpp");
static const u16 sTilesetAnims_RB_Plant_Water_Hard_Frame3[] = INCBIN_U16("data/tilesets/secondary/rb_plant/anim/water_hard/3.4bpp");

static const u16* const sTilesetAnims_RB_Plant_Water_Hard[] = {
    sTilesetAnims_RB_Plant_Water_Hard_Frame0,
    sTilesetAnims_RB_Plant_Water_Hard_Frame1,
    sTilesetAnims_RB_Plant_Water_Hard_Frame2,
    sTilesetAnims_RB_Plant_Water_Hard_Frame3,
    sTilesetAnims_RB_Plant_Water_Hard_Frame2,
    sTilesetAnims_RB_Plant_Water_Hard_Frame1
};

static const u16 sTilesetAnims_RB_Lab_Water_Hard_Frame0[] = INCBIN_U16("data/tilesets/secondary/rb_lab/anim/water_hard/0.4bpp");
static const u16 sTilesetAnims_RB_Lab_Water_Hard_Frame1[] = INCBIN_U16("data/tilesets/secondary/rb_lab/anim/water_hard/1.4bpp");
static const u16 sTilesetAnims_RB_Lab_Water_Hard_Frame2[] = INCBIN_U16("data/tilesets/secondary/rb_lab/anim/water_hard/2.4bpp");
static const u16 sTilesetAnims_RB_Lab_Water_Hard_Frame3[] = INCBIN_U16("data/tilesets/secondary/rb_lab/anim/water_hard/3.4bpp");

static const u16* const sTilesetAnims_RB_Lab_Water_Hard[] = {
    sTilesetAnims_RB_Lab_Water_Hard_Frame0,
    sTilesetAnims_RB_Lab_Water_Hard_Frame1,
    sTilesetAnims_RB_Lab_Water_Hard_Frame2,
    sTilesetAnims_RB_Lab_Water_Hard_Frame3,
    sTilesetAnims_RB_Lab_Water_Hard_Frame2,
    sTilesetAnims_RB_Lab_Water_Hard_Frame1
};

static const u16 sTilesetAnims_RB_Forest_Water_Hard_Frame0[] = INCBIN_U16("data/tilesets/secondary/rb_forest/anim/water_hard/0.4bpp");
static const u16 sTilesetAnims_RB_Forest_Water_Hard_Frame1[] = INCBIN_U16("data/tilesets/secondary/rb_forest/anim/water_hard/1.4bpp");
static const u16 sTilesetAnims_RB_Forest_Water_Hard_Frame2[] = INCBIN_U16("data/tilesets/secondary/rb_forest/anim/water_hard/2.4bpp");
static const u16 sTilesetAnims_RB_Forest_Water_Hard_Frame3[] = INCBIN_U16("data/tilesets/secondary/rb_forest/anim/water_hard/3.4bpp");

static const u16* const sTilesetAnims_RB_Forest_Water_Hard[] = {
    sTilesetAnims_RB_Forest_Water_Hard_Frame0,
    sTilesetAnims_RB_Forest_Water_Hard_Frame1,
    sTilesetAnims_RB_Forest_Water_Hard_Frame2,
    sTilesetAnims_RB_Forest_Water_Hard_Frame3,
    sTilesetAnims_RB_Forest_Water_Hard_Frame2,
    sTilesetAnims_RB_Forest_Water_Hard_Frame1
};

static const u16 sTilesetAnims_RB_Ship_Water_Hard_Frame0[] = INCBIN_U16("data/tilesets/secondary/rb_ship/anim/water_hard/0.4bpp");
static const u16 sTilesetAnims_RB_Ship_Water_Hard_Frame1[] = INCBIN_U16("data/tilesets/secondary/rb_ship/anim/water_hard/1.4bpp");
static const u16 sTilesetAnims_RB_Ship_Water_Hard_Frame2[] = INCBIN_U16("data/tilesets/secondary/rb_ship/anim/water_hard/2.4bpp");
static const u16 sTilesetAnims_RB_Ship_Water_Hard_Frame3[] = INCBIN_U16("data/tilesets/secondary/rb_ship/anim/water_hard/3.4bpp");

static const u16* const sTilesetAnims_RB_Ship_Water_Hard[] = {
    sTilesetAnims_RB_Ship_Water_Hard_Frame0,
    sTilesetAnims_RB_Ship_Water_Hard_Frame1,
    sTilesetAnims_RB_Ship_Water_Hard_Frame2,
    sTilesetAnims_RB_Ship_Water_Hard_Frame3,
    sTilesetAnims_RB_Ship_Water_Hard_Frame2,
    sTilesetAnims_RB_Ship_Water_Hard_Frame1
};


static void ResetTilesetAnimBuffer(void)
{
    sTilesetDMA3TransferBufferSize = 0;
    CpuFill32(0, sTilesetDMA3TransferBuffer, sizeof sTilesetDMA3TransferBuffer);
}

static void AppendTilesetAnimToBuffer(const u16 *src, u16 *dest, u16 size)
{
    if (sTilesetDMA3TransferBufferSize < 20)
    {
        sTilesetDMA3TransferBuffer[sTilesetDMA3TransferBufferSize].src = src;
        sTilesetDMA3TransferBuffer[sTilesetDMA3TransferBufferSize].dest = dest;
        sTilesetDMA3TransferBuffer[sTilesetDMA3TransferBufferSize].size = size;
        sTilesetDMA3TransferBufferSize++;
    }
}

void TransferTilesetAnimsBuffer(void)
{
    int i;

    for (i = 0; i < sTilesetDMA3TransferBufferSize; i++)
        DmaCopy16(3, sTilesetDMA3TransferBuffer[i].src, sTilesetDMA3TransferBuffer[i].dest, sTilesetDMA3TransferBuffer[i].size);

    sTilesetDMA3TransferBufferSize = 0;
}

void InitTilesetAnimations(void)
{
    ResetTilesetAnimBuffer();
    _InitPrimaryTilesetAnimation();
    _InitSecondaryTilesetAnimation();
}

void InitSecondaryTilesetAnimation(void)
{
    _InitSecondaryTilesetAnimation();
}

void UpdateTilesetAnimations(void)
{
    ResetTilesetAnimBuffer();
    if (++sPrimaryTilesetAnimCounter >= sPrimaryTilesetAnimCounterMax)
        sPrimaryTilesetAnimCounter = 0;
    if (++sSecondaryTilesetAnimCounter >= sSecondaryTilesetAnimCounterMax)
        sSecondaryTilesetAnimCounter = 0;

    if (sPrimaryTilesetAnimCallback)
        sPrimaryTilesetAnimCallback(sPrimaryTilesetAnimCounter);
    if (sSecondaryTilesetAnimCallback)
        sSecondaryTilesetAnimCallback(sSecondaryTilesetAnimCounter);
}

static void _InitPrimaryTilesetAnimation(void)
{
    sPrimaryTilesetAnimCounter = 0;
    sPrimaryTilesetAnimCounterMax = 0;
    sPrimaryTilesetAnimCallback = NULL;
    if (gMapHeader.mapLayout->primaryTileset && gMapHeader.mapLayout->primaryTileset->callback)
        gMapHeader.mapLayout->primaryTileset->callback();
}

static void _InitSecondaryTilesetAnimation(void)
{
    sSecondaryTilesetAnimCounter = 0;
    sSecondaryTilesetAnimCounterMax = 0;
    sSecondaryTilesetAnimCallback = NULL;
    if (gMapHeader.mapLayout->secondaryTileset && gMapHeader.mapLayout->secondaryTileset->callback)
        gMapHeader.mapLayout->secondaryTileset->callback();
}

static void QueueAnimTiles_RB_General_Flower(u16 timer)
{
    AppendTilesetAnimToBuffer(sTilesetAnims_RB_General_Flower[timer % ARRAY_COUNT(sTilesetAnims_RB_General_Flower)], (u16*)(BG_VRAM + TILE_OFFSET_4BPP(183)), 1 * TILE_SIZE_4BPP);
}

static void QueueAnimTiles_RB_General_Water_Soft(u16 timer)
{
    AppendTilesetAnimToBuffer(sTilesetAnims_RB_General_Water_Soft[timer % ARRAY_COUNT(sTilesetAnims_RB_General_Water_Soft)], (u16*)(BG_VRAM + TILE_OFFSET_4BPP(186)), 1 * TILE_SIZE_4BPP);
}

static void QueueAnimTiles_RB_General_Water_Hard(u16 timer)
{
    AppendTilesetAnimToBuffer(sTilesetAnims_RB_General_Water_Hard[timer % ARRAY_COUNT(sTilesetAnims_RB_General_Water_Hard)], (u16*)(BG_VRAM + TILE_OFFSET_4BPP(202)), 1 * TILE_SIZE_4BPP);
}

static void QueueAnimTiles_RB_Cavern_Water_Hard(u16 timer)
{
    AppendTilesetAnimToBuffer(sTilesetAnims_RB_Cavern_Water_Hard[timer % ARRAY_COUNT(sTilesetAnims_RB_Cavern_Water_Hard)], (u16*)(BG_VRAM + TILE_OFFSET_4BPP(660)), 1 * TILE_SIZE_4BPP);
}

static void QueueAnimTiles_RB_Plant_Water_Hard(u16 timer)
{
    AppendTilesetAnimToBuffer(sTilesetAnims_RB_Plant_Water_Hard[timer % ARRAY_COUNT(sTilesetAnims_RB_Plant_Water_Hard)], (u16*)(BG_VRAM + TILE_OFFSET_4BPP(660)), 1 * TILE_SIZE_4BPP);
}

static void QueueAnimTiles_RB_Lab_Water_Hard(u16 timer)
{
    AppendTilesetAnimToBuffer(sTilesetAnims_RB_Lab_Water_Hard[timer % ARRAY_COUNT(sTilesetAnims_RB_Lab_Water_Hard)], (u16*)(BG_VRAM + TILE_OFFSET_4BPP(660)), 1 * TILE_SIZE_4BPP);
}

static void QueueAnimTiles_RB_Forest_Water_Hard(u16 timer)
{
    AppendTilesetAnimToBuffer(sTilesetAnims_RB_Forest_Water_Hard[timer % ARRAY_COUNT(sTilesetAnims_RB_Forest_Water_Hard)], (u16*)(BG_VRAM + TILE_OFFSET_4BPP(660)), 1 * TILE_SIZE_4BPP);
}

static void QueueAnimTiles_RB_Ship_Water_Hard(u16 timer)
{
    AppendTilesetAnimToBuffer(sTilesetAnims_RB_Ship_Water_Hard[timer % ARRAY_COUNT(sTilesetAnims_RB_Ship_Water_Hard)], (u16*)(BG_VRAM + TILE_OFFSET_4BPP(660)), 1 * TILE_SIZE_4BPP);
}

static void TilesetAnim_RB_General(u16 timer)
{
    if (timer % 16 == 0)
        QueueAnimTiles_RB_General_Flower(timer / 16);
    if (timer % 16 == 1)
        QueueAnimTiles_RB_General_Water_Soft(timer / 16);
    if (timer % 16 == 2)
        QueueAnimTiles_RB_General_Water_Hard(timer / 16);
}

void InitTilesetAnim_RB_General(void)
{
    sPrimaryTilesetAnimCounter = 0;
    sPrimaryTilesetAnimCounterMax = 640;
    sPrimaryTilesetAnimCallback = TilesetAnim_RB_General;
}

static void TilesetAnim_RB_Cavern(u16 timer)
{
    if (timer % 16 == 0)
        QueueAnimTiles_RB_Cavern_Water_Hard(timer / 16);
}

void InitTilesetAnim_RB_Cavern(void)
{
    sSecondaryTilesetAnimCounter = 0;
    sSecondaryTilesetAnimCounterMax = 640;
    sSecondaryTilesetAnimCallback = TilesetAnim_RB_Cavern;
}

static void TilesetAnim_RB_Plant(u16 timer)
{
    if (timer % 16 == 0)
        QueueAnimTiles_RB_Plant_Water_Hard(timer / 16);
}

void InitTilesetAnim_RB_Plant(void)
{
    sSecondaryTilesetAnimCounter = 0;
    sSecondaryTilesetAnimCounterMax = 640;
    sSecondaryTilesetAnimCallback = TilesetAnim_RB_Plant;
}

static void TilesetAnim_RB_Lab(u16 timer)
{
    if (timer % 16 == 0)
        QueueAnimTiles_RB_Lab_Water_Hard(timer / 16);
}

void InitTilesetAnim_RB_Lab(void)
{
    sSecondaryTilesetAnimCounter = 0;
    sSecondaryTilesetAnimCounterMax = 640;
    sSecondaryTilesetAnimCallback = TilesetAnim_RB_Lab;
}

static void TilesetAnim_RB_Forest(u16 timer)
{
    if (timer % 16 == 0)
        QueueAnimTiles_RB_Forest_Water_Hard(timer / 16);
}

void InitTilesetAnim_RB_Forest(void)
{
    sSecondaryTilesetAnimCounter = 0;
    sSecondaryTilesetAnimCounterMax = 640;
    sSecondaryTilesetAnimCallback = TilesetAnim_RB_Forest;
}

static void TilesetAnim_RB_Ship(u16 timer)
{
    if (timer % 16 == 0)
        QueueAnimTiles_RB_Ship_Water_Hard(timer / 16);
}

void InitTilesetAnim_RB_Ship(void)
{
    sSecondaryTilesetAnimCounter = 0;
    sSecondaryTilesetAnimCounterMax = 640;
    sSecondaryTilesetAnimCallback = TilesetAnim_RB_Ship;
}



