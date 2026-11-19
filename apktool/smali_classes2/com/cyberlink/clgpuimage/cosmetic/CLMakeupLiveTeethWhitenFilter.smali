.class public final Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;
.super Lcom/cyberlink/clgpuimage/GPUImageFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;
    }
.end annotation


# static fields
.field public static final Q:[C

.field public static final R:[F

.field public static final S:[C

.field public static final T:[C


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:F

.field public G:F

.field public H:F

.field public I:F

.field public J:[B

.field public K:Ljava/nio/ByteBuffer;

.field public final L:Ljava/nio/ByteBuffer;

.field public M:I

.field public N:I

.field public O:F

.field public final P:Ljava/lang/Object;

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public final t:Ljava/nio/FloatBuffer;

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x400

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->Q:[C

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->R:[F

    const/16 v0, 0x2fe

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->S:[C

    const/16 v0, 0x7f4

    new-array v0, v0, [C

    fill-array-data v0, :array_3

    sput-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->T:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x0s
        0x0s
        0x0s
        0x0s
        0xcs
        0x0s
        0x5s
        0xas
        0x15s
        0x0s
        0xas
        0x13s
        0x1cs
        0x0s
        0xes
        0x1as
        0x21s
        0x0s
        0x13s
        0x1fs
        0x26s
        0x0s
        0x16s
        0x25s
        0x2as
        0x0s
        0x1as
        0x2as
        0x2es
        0x0s
        0x1ds
        0x2fs
        0x31s
        0x0s
        0x21s
        0x34s
        0x34s
        0x0s
        0x23s
        0x37s
        0x37s
        0x0s
        0x27s
        0x3bs
        0x3as
        0x0s
        0x2as
        0x3ds
        0x3ds
        0x0s
        0x2cs
        0x40s
        0x3fs
        0x1s
        0x2fs
        0x43s
        0x42s
        0x1s
        0x31s
        0x46s
        0x44s
        0x1s
        0x34s
        0x48s
        0x46s
        0x1s
        0x36s
        0x4as
        0x49s
        0x1s
        0x38s
        0x4cs
        0x4bs
        0x1s
        0x3bs
        0x4fs
        0x4ds
        0x1s
        0x3ds
        0x51s
        0x4fs
        0x1s
        0x3fs
        0x53s
        0x51s
        0x1s
        0x41s
        0x55s
        0x53s
        0x2s
        0x43s
        0x56s
        0x54s
        0x2s
        0x45s
        0x58s
        0x56s
        0x2s
        0x47s
        0x5as
        0x58s
        0x2s
        0x48s
        0x5bs
        0x5as
        0x2s
        0x4as
        0x5ds
        0x5bs
        0x2s
        0x4cs
        0x5es
        0x5ds
        0x2s
        0x4ds
        0x60s
        0x5es
        0x3s
        0x50s
        0x62s
        0x60s
        0x3s
        0x51s
        0x63s
        0x61s
        0x3s
        0x53s
        0x64s
        0x63s
        0x3s
        0x54s
        0x66s
        0x64s
        0x3s
        0x55s
        0x67s
        0x66s
        0x4s
        0x57s
        0x69s
        0x67s
        0x4s
        0x58s
        0x6as
        0x69s
        0x4s
        0x5as
        0x6bs
        0x6as
        0x4s
        0x5bs
        0x6ds
        0x6bs
        0x4s
        0x5ds
        0x6es
        0x6ds
        0x5s
        0x5es
        0x6fs
        0x6es
        0x5s
        0x5fs
        0x71s
        0x6fs
        0x5s
        0x61s
        0x72s
        0x71s
        0x5s
        0x62s
        0x73s
        0x72s
        0x6s
        0x63s
        0x74s
        0x73s
        0x6s
        0x65s
        0x76s
        0x74s
        0x6s
        0x66s
        0x77s
        0x76s
        0x6s
        0x68s
        0x78s
        0x77s
        0x7s
        0x69s
        0x7as
        0x78s
        0x7s
        0x6as
        0x7bs
        0x79s
        0x7s
        0x6cs
        0x7cs
        0x7as
        0x8s
        0x6ds
        0x7ds
        0x7bs
        0x8s
        0x6fs
        0x7fs
        0x7cs
        0x8s
        0x70s
        0x80s
        0x7es
        0x9s
        0x71s
        0x81s
        0x7fs
        0x9s
        0x73s
        0x82s
        0x80s
        0x9s
        0x74s
        0x84s
        0x81s
        0xas
        0x76s
        0x84s
        0x82s
        0xas
        0x77s
        0x85s
        0x83s
        0xas
        0x78s
        0x86s
        0x84s
        0xbs
        0x7as
        0x88s
        0x85s
        0xbs
        0x7bs
        0x89s
        0x86s
        0xbs
        0x7cs
        0x8as
        0x87s
        0xcs
        0x7es
        0x8bs
        0x88s
        0xcs
        0x7fs
        0x8cs
        0x89s
        0xds
        0x80s
        0x8ds
        0x8as
        0xds
        0x82s
        0x8fs
        0x8bs
        0xds
        0x83s
        0x90s
        0x8cs
        0xes
        0x84s
        0x91s
        0x8ds
        0xes
        0x85s
        0x91s
        0x8es
        0xfs
        0x86s
        0x92s
        0x8fs
        0xfs
        0x87s
        0x93s
        0x90s
        0x10s
        0x88s
        0x94s
        0x91s
        0x10s
        0x8as
        0x96s
        0x92s
        0x10s
        0x8bs
        0x97s
        0x92s
        0x11s
        0x8cs
        0x98s
        0x93s
        0x11s
        0x8ds
        0x99s
        0x94s
        0x12s
        0x8fs
        0x9as
        0x95s
        0x12s
        0x90s
        0x9bs
        0x96s
        0x13s
        0x91s
        0x9cs
        0x97s
        0x13s
        0x91s
        0x9cs
        0x98s
        0x14s
        0x92s
        0x9ds
        0x99s
        0x14s
        0x93s
        0x9es
        0x99s
        0x15s
        0x95s
        0x9fs
        0x9as
        0x15s
        0x96s
        0xa0s
        0x9bs
        0x16s
        0x97s
        0xa1s
        0x9cs
        0x17s
        0x98s
        0xa2s
        0x9ds
        0x17s
        0x99s
        0xa3s
        0x9es
        0x18s
        0x9as
        0xa4s
        0x9fs
        0x18s
        0x9bs
        0xa5s
        0x9fs
        0x19s
        0x9cs
        0xa5s
        0xa0s
        0x19s
        0x9cs
        0xa5s
        0xa1s
        0x1as
        0x9ds
        0xa6s
        0xa2s
        0x1bs
        0x9es
        0xa7s
        0xa3s
        0x1bs
        0x9fs
        0xa8s
        0xa3s
        0x1cs
        0xa0s
        0xa9s
        0xa4s
        0x1ds
        0xa1s
        0xaas
        0xa5s
        0x1ds
        0xa2s
        0xabs
        0xa6s
        0x1es
        0xa3s
        0xacs
        0xa6s
        0x1fs
        0xa4s
        0xacs
        0xa7s
        0x1fs
        0xa5s
        0xacs
        0xa8s
        0x20s
        0xa5s
        0xads
        0xa9s
        0x21s
        0xa6s
        0xaes
        0xa9s
        0x21s
        0xa7s
        0xafs
        0xaas
        0x22s
        0xa8s
        0xb0s
        0xabs
        0x23s
        0xa9s
        0xb1s
        0xacs
        0x23s
        0xaas
        0xb1s
        0xacs
        0x24s
        0xabs
        0xb2s
        0xads
        0x25s
        0xacs
        0xb3s
        0xaes
        0x26s
        0xacs
        0xb4s
        0xafs
        0x26s
        0xads
        0xb4s
        0xafs
        0x27s
        0xaes
        0xb4s
        0xb0s
        0x28s
        0xaes
        0xb5s
        0xb1s
        0x29s
        0xafs
        0xb6s
        0xb2s
        0x29s
        0xb0s
        0xb7s
        0xb2s
        0x2as
        0xb1s
        0xb7s
        0xb3s
        0x2bs
        0xb2s
        0xb8s
        0xb4s
        0x2cs
        0xb3s
        0xb9s
        0xb4s
        0x2ds
        0xb3s
        0xbas
        0xb5s
        0x2ds
        0xb4s
        0xbas
        0xb6s
        0x2es
        0xb4s
        0xbas
        0xb6s
        0x2fs
        0xb5s
        0xbbs
        0xb7s
        0x30s
        0xb6s
        0xbcs
        0xb8s
        0x31s
        0xb7s
        0xbcs
        0xb8s
        0x32s
        0xb7s
        0xbds
        0xb9s
        0x33s
        0xb8s
        0xbes
        0xbas
        0x34s
        0xb9s
        0xbes
        0xbas
        0x34s
        0xbas
        0xbfs
        0xbbs
        0x35s
        0xbas
        0xc0s
        0xbcs
        0x36s
        0xbas
        0xc0s
        0xbcs
        0x37s
        0xbbs
        0xc0s
        0xbds
        0x38s
        0xbcs
        0xc1s
        0xbes
        0x39s
        0xbds
        0xc2s
        0xbes
        0x3as
        0xbds
        0xc2s
        0xbfs
        0x3bs
        0xbes
        0xc3s
        0xc0s
        0x3cs
        0xbfs
        0xc4s
        0xc0s
        0x3ds
        0xc0s
        0xc4s
        0xc1s
        0x3es
        0xc0s
        0xc5s
        0xc2s
        0x3fs
        0xc0s
        0xc6s
        0xc2s
        0x40s
        0xc1s
        0xc6s
        0xc3s
        0x41s
        0xc1s
        0xc6s
        0xc3s
        0x42s
        0xc2s
        0xc7s
        0xc4s
        0x43s
        0xc3s
        0xc7s
        0xc5s
        0x44s
        0xc4s
        0xc8s
        0xc5s
        0x45s
        0xc4s
        0xc9s
        0xc6s
        0x46s
        0xc5s
        0xc9s
        0xc7s
        0x47s
        0xc6s
        0xcas
        0xc7s
        0x48s
        0xc6s
        0xcas
        0xc8s
        0x4as
        0xc6s
        0xcbs
        0xc8s
        0x4bs
        0xc7s
        0xccs
        0xc9s
        0x4cs
        0xc8s
        0xccs
        0xcas
        0x4ds
        0xc8s
        0xccs
        0xcas
        0x4es
        0xc9s
        0xcds
        0xcbs
        0x4fs
        0xcas
        0xcds
        0xcbs
        0x50s
        0xcas
        0xces
        0xccs
        0x52s
        0xcbs
        0xcfs
        0xcds
        0x53s
        0xccs
        0xcfs
        0xcds
        0x54s
        0xccs
        0xd0s
        0xces
        0x55s
        0xccs
        0xd0s
        0xces
        0x56s
        0xcds
        0xd1s
        0xcfs
        0x57s
        0xcds
        0xd1s
        0xcfs
        0x59s
        0xces
        0xd1s
        0xd0s
        0x5as
        0xcfs
        0xd2s
        0xd1s
        0x5bs
        0xcfs
        0xd2s
        0xd1s
        0x5cs
        0xd0s
        0xd3s
        0xd2s
        0x5es
        0xd1s
        0xd4s
        0xd2s
        0x5fs
        0xd1s
        0xd4s
        0xd3s
        0x60s
        0xd1s
        0xd5s
        0xd3s
        0x62s
        0xd2s
        0xd6s
        0xd4s
        0x63s
        0xd2s
        0xd6s
        0xd5s
        0x64s
        0xd3s
        0xd6s
        0xd5s
        0x66s
        0xd4s
        0xd6s
        0xd6s
        0x67s
        0xd4s
        0xd7s
        0xd6s
        0x68s
        0xd5s
        0xd8s
        0xd7s
        0x6as
        0xd6s
        0xd8s
        0xd7s
        0x6bs
        0xd6s
        0xd9s
        0xd8s
        0x6cs
        0xd6s
        0xd9s
        0xd8s
        0x6es
        0xd7s
        0xdas
        0xd9s
        0x6fs
        0xd7s
        0xdbs
        0xdas
        0x70s
        0xd8s
        0xdbs
        0xdas
        0x72s
        0xd9s
        0xdbs
        0xdbs
        0x73s
        0xd9s
        0xdbs
        0xdbs
        0x75s
        0xdas
        0xdcs
        0xdcs
        0x76s
        0xdas
        0xdds
        0xdcs
        0x78s
        0xdbs
        0xdds
        0xdds
        0x79s
        0xdbs
        0xdes
        0xdds
        0x7bs
        0xdbs
        0xdes
        0xdes
        0x7cs
        0xdcs
        0xdfs
        0xdes
        0x7es
        0xdds
        0xe0s
        0xdfs
        0x7fs
        0xdds
        0xe0s
        0xdfs
        0x81s
        0xdes
        0xe0s
        0xe0s
        0x82s
        0xdfs
        0xe0s
        0xe0s
        0x84s
        0xdfs
        0xe1s
        0xe1s
        0x85s
        0xe0s
        0xe1s
        0xe2s
        0x87s
        0xe0s
        0xe2s
        0xe2s
        0x88s
        0xe0s
        0xe3s
        0xe3s
        0x8as
        0xe1s
        0xe3s
        0xe3s
        0x8cs
        0xe1s
        0xe4s
        0xe4s
        0x8ds
        0xe2s
        0xe4s
        0xe4s
        0x8fs
        0xe3s
        0xe5s
        0xe5s
        0x90s
        0xe3s
        0xe5s
        0xe5s
        0x92s
        0xe4s
        0xe5s
        0xe6s
        0x94s
        0xe4s
        0xe6s
        0xe6s
        0x95s
        0xe5s
        0xe6s
        0xe7s
        0x97s
        0xe5s
        0xe7s
        0xe7s
        0x99s
        0xe5s
        0xe7s
        0xe8s
        0x9as
        0xe6s
        0xe8s
        0xe8s
        0x9cs
        0xe7s
        0xe9s
        0xe9s
        0x9es
        0xe7s
        0xe9s
        0xe9s
        0xa0s
        0xe8s
        0xe9s
        0xeas
        0xa1s
        0xe8s
        0xe9s
        0xeas
        0xa3s
        0xe9s
        0xeas
        0xebs
        0xa5s
        0xe9s
        0xeas
        0xebs
        0xa7s
        0xe9s
        0xebs
        0xecs
        0xa8s
        0xeas
        0xebs
        0xecs
        0xaas
        0xeas
        0xecs
        0xeds
        0xacs
        0xebs
        0xeds
        0xeds
        0xaes
        0xecs
        0xeds
        0xees
        0xb0s
        0xecs
        0xees
        0xees
        0xb1s
        0xeds
        0xees
        0xees
        0xb3s
        0xeds
        0xees
        0xefs
        0xb5s
        0xees
        0xees
        0xefs
        0xb7s
        0xees
        0xefs
        0xf0s
        0xb9s
        0xees
        0xf0s
        0xf0s
        0xbbs
        0xefs
        0xf0s
        0xf1s
        0xbds
        0xefs
        0xf1s
        0xf1s
        0xbfs
        0xf0s
        0xf1s
        0xf2s
        0xc0s
        0xf1s
        0xf2s
        0xf2s
        0xc2s
        0xf1s
        0xf2s
        0xf3s
        0xc4s
        0xf2s
        0xf2s
        0xf3s
        0xc6s
        0xf2s
        0xf2s
        0xf4s
        0xc8s
        0xf2s
        0xf3s
        0xf4s
        0xcas
        0xf3s
        0xf4s
        0xf5s
        0xccs
        0xf3s
        0xf4s
        0xf5s
        0xces
        0xf4s
        0xf5s
        0xf6s
        0xd0s
        0xf4s
        0xf5s
        0xf6s
        0xd2s
        0xf5s
        0xf6s
        0xf6s
        0xd4s
        0xf6s
        0xf6s
        0xf7s
        0xd6s
        0xf6s
        0xf6s
        0xf7s
        0xd8s
        0xf6s
        0xf7s
        0xf8s
        0xdbs
        0xf6s
        0xf7s
        0xf8s
        0xdds
        0xf7s
        0xf8s
        0xf9s
        0xdfs
        0xf8s
        0xf8s
        0xf9s
        0xe1s
        0xf8s
        0xf9s
        0xfas
        0xe3s
        0xf9s
        0xf9s
        0xfas
        0xe5s
        0xf9s
        0xfas
        0xfbs
        0xe7s
        0xfas
        0xfas
        0xfbs
        0xe9s
        0xfas
        0xfas
        0xfcs
        0xecs
        0xfas
        0xfbs
        0xfcs
        0xees
        0xfbs
        0xfbs
        0xfcs
        0xf0s
        0xfbs
        0xfcs
        0xfds
        0xf2s
        0xfcs
        0xfcs
        0xfds
        0xf4s
        0xfds
        0xfds
        0xfes
        0xf7s
        0xfds
        0xfds
        0xfes
        0xf9s
        0xfes
        0xfes
        0xffs
        0xfbs
        0xfes
        0xfes
        0xffs
        0xffs
        0xffs
        0xffs
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 2
        0xfas
        0x8ds
        0x8ds
        0x8bs
        0xf2s
        0xfbs
        0x8es
        0x8ds
        0xfes
        0xe8s
        0x8fs
        0xfes
        0xfcs
        0xabs
        0xe8s
        0x89s
        0x88s
        0x8cs
        0xf2s
        0x8ds
        0xf2s
        0x88s
        0xf7s
        0xa2s
        0xc2s
        0xfas
        0x8ds
        0x8ds
        0x8bs
        0xf2s
        0xfbs
        0x8es
        0x8ds
        0xfes
        0xe8s
        0x8fs
        0xfes
        0xfcs
        0xabs
        0xe8s
        0xf2s
        0xf7s
        0x89s
        0x8es
        0x8ds
        0xeds
        0xfes
        0x81s
        0x8ds
        0x8es
        0x8bs
        0xfes
        0xbas
        0x88s
        0x88s
        0x8bs
        0xfds
        0xf2s
        0xf7s
        0xfas
        0x8ds
        0xfes
        0xa2s
        0xc2s
        0xfas
        0x8ds
        0x8ds
        0x8bs
        0xf2s
        0xfbs
        0x8es
        0x8ds
        0xfes
        0xe8s
        0x8fs
        0xfes
        0xfcs
        0xabs
        0xe8s
        0xf2s
        0xf7s
        0x89s
        0x8es
        0x8ds
        0xf8s
        0x8ds
        0xfes
        0xfes
        0x8ds
        0xf1s
        0xf8s
        0x80s
        0xf1s
        0xf2s
        0x8ds
        0xfes
        0xf7s
        0xf8s
        0x8ds
        0xfes
        0x81s
        0x8ds
        0x8es
        0x8bs
        0xfes
        0xf8s
        0xfcs
        0x88s
        0x88s
        0x8bs
        0xfds
        0xf2s
        0xf7s
        0xfas
        0x8ds
        0xfes
        0xa2s
        0xc2s
        0xc2s
        0x8fs
        0xfas
        0x8bs
        0x82s
        0xf2s
        0xf7s
        0xf0s
        0xe8s
        0x8fs
        0xfes
        0xfcs
        0xa9s
        0xe8s
        0x8ds
        0xfes
        0x81s
        0x8ds
        0x8es
        0x8bs
        0xfes
        0xbas
        0x88s
        0x88s
        0x8bs
        0xfds
        0xf2s
        0xf7s
        0xfas
        0x8ds
        0xfes
        0xa2s
        0xc2s
        0x8fs
        0xfas
        0x8bs
        0x82s
        0xf2s
        0xf7s
        0xf0s
        0xe8s
        0x8fs
        0xfes
        0xfcs
        0xa9s
        0xe8s
        0x8ds
        0xfes
        0xfes
        0x8ds
        0xf1s
        0xf8s
        0x80s
        0xf1s
        0xf2s
        0x8ds
        0xfes
        0xf7s
        0xf8s
        0x8ds
        0xfes
        0x81s
        0x8ds
        0x8es
        0x8bs
        0xfes
        0xf8s
        0xfcs
        0x88s
        0x88s
        0x8bs
        0xfds
        0xf2s
        0xf7s
        0xfas
        0x8ds
        0xfes
        0xa2s
        0xc2s
        0xc2s
        0x8es
        0xf7s
        0xf2s
        0xffs
        0x88s
        0x8bs
        0xf6s
        0xe8s
        0xffs
        0xf5s
        0x88s
        0xfas
        0x8ds
        0xe8s
        0xfcs
        0xfes
        0xf7s
        0x8ds
        0xfes
        0x8bs
        0xf8s
        0x81s
        0xa2s
        0xc2s
        0x8es
        0xf7s
        0xf2s
        0xffs
        0x88s
        0x8bs
        0xf6s
        0xe8s
        0xffs
        0xf5s
        0x88s
        0xfas
        0x8ds
        0xe8s
        0xfcs
        0xfes
        0xf7s
        0x8ds
        0xfes
        0x8bs
        0xf8s
        0x82s
        0xa2s
        0xc2s
        0x8es
        0xf7s
        0xf2s
        0xffs
        0x88s
        0x8bs
        0xf6s
        0xe8s
        0xffs
        0xf5s
        0x88s
        0xfas
        0x8ds
        0xe8s
        0xfbs
        0xfas
        0xfcs
        0xf4s
        0xf0s
        0x8bs
        0x88s
        0x8es
        0xf7s
        0xfds
        0xf8s
        0xf2s
        0xf6s
        0xfas
        0xf0s
        0xfes
        0xf8s
        0x80s
        0xf2s
        0xfds
        0x8ds
        0xf1s
        0xa2s
        0xc2s
        0x8es
        0xf7s
        0xf2s
        0xffs
        0x88s
        0x8bs
        0xf6s
        0xe8s
        0xffs
        0xf5s
        0x88s
        0xfas
        0x8ds
        0xe8s
        0xfbs
        0xfas
        0xfcs
        0xf4s
        0xf0s
        0x8bs
        0x88s
        0x8es
        0xf7s
        0xfds
        0xf8s
        0xf2s
        0xf6s
        0xfas
        0xf0s
        0xfes
        0xf8s
        0xf1s
        0xfes
        0xf2s
        0xf0s
        0xf1s
        0x8ds
        0xa2s
        0xc2s
        0x8es
        0xf7s
        0xf2s
        0xffs
        0x88s
        0x8bs
        0xf6s
        0xe8s
        0xffs
        0xf5s
        0x88s
        0xfas
        0x8ds
        0xe8s
        0x8ds
        0xfes
        0xfes
        0x8ds
        0xf1s
        0xf8s
        0x80s
        0xf1s
        0xf2s
        0x8ds
        0xfes
        0xf7s
        0xf8s
        0x80s
        0xf2s
        0xfds
        0x8ds
        0xf1s
        0xa2s
        0xc2s
        0x8es
        0xf7s
        0xf2s
        0xffs
        0x88s
        0x8bs
        0xf6s
        0xe8s
        0xffs
        0xf5s
        0x88s
        0xfas
        0x8ds
        0xe8s
        0x8ds
        0xfes
        0xfes
        0x8ds
        0xf1s
        0xf8s
        0x80s
        0xf1s
        0xf2s
        0x8ds
        0xfes
        0xf7s
        0xf8s
        0xf1s
        0xfes
        0xf2s
        0xf0s
        0xf1s
        0x8ds
        0xa2s
        0xc2s
        0xc2s
        0x8fs
        0x88s
        0xf2s
        0xfds
        0xe8s
        0xf6s
        0xfas
        0xf2s
        0xf7s
        0x9fs
        0x90s
        0xc2s
        0x84s
        0xc2s
        0xf0s
        0xf5s
        0xf8s
        0xe9s
        0x88s
        0x8cs
        0xf2s
        0x8ds
        0xf2s
        0x88s
        0xf7s
        0xe8s
        0xa4s
        0xe8s
        0x89s
        0x88s
        0x8cs
        0xf2s
        0x8ds
        0xf2s
        0x88s
        0xf7s
        0xa2s
        0xc2s
        0x8ds
        0xfes
        0x81s
        0x8ds
        0x8es
        0x8bs
        0xfes
        0xbas
        0x88s
        0x88s
        0x8bs
        0xfds
        0xf2s
        0xf7s
        0xfas
        0x8ds
        0xfes
        0xe8s
        0xa4s
        0xe8s
        0xf2s
        0xf7s
        0x89s
        0x8es
        0x8ds
        0xeds
        0xfes
        0x81s
        0x8ds
        0x8es
        0x8bs
        0xfes
        0xbas
        0x88s
        0x88s
        0x8bs
        0xfds
        0xf2s
        0xf7s
        0xfas
        0x8ds
        0xfes
        0x95s
        0x81s
        0x82s
        0xa2s
        0xc2s
        0x8ds
        0xfes
        0xfes
        0x8ds
        0xf1s
        0xf8s
        0x80s
        0xf1s
        0xf2s
        0x8ds
        0xfes
        0xf7s
        0xf8s
        0x8ds
        0xfes
        0x81s
        0x8ds
        0x8es
        0x8bs
        0xfes
        0xf8s
        0xfcs
        0x88s
        0x88s
        0x8bs
        0xfds
        0xf2s
        0xf7s
        0xfas
        0x8ds
        0xfes
        0x95s
        0x81s
        0xe8s
        0xa4s
        0xe8s
        0x9fs
        0xf2s
        0xf7s
        0x89s
        0x8es
        0x8ds
        0xf8s
        0x8ds
        0xfes
        0xfes
        0x8ds
        0xf1s
        0xf8s
        0x80s
        0xf1s
        0xf2s
        0x8ds
        0xfes
        0xf7s
        0xf8s
        0x8ds
        0xfes
        0x81s
        0x8ds
        0x8es
        0x8bs
        0xfes
        0xf8s
        0xfcs
        0x88s
        0x88s
        0x8bs
        0xfds
        0xf2s
        0xf7s
        0xfas
        0x8ds
        0xfes
        0x95s
        0x81s
        0xe8s
        0x94s
        0xe8s
        0xfcs
        0xfes
        0xf7s
        0x8ds
        0xfes
        0x8bs
        0xf8s
        0x81s
        0x90s
        0xe8s
        0x91s
        0xe8s
        0xfbs
        0xfas
        0xfcs
        0xf4s
        0xf0s
        0x8bs
        0x88s
        0x8es
        0xf7s
        0xfds
        0xf8s
        0xf2s
        0xf6s
        0xfas
        0xf0s
        0xfes
        0xf8s
        0x80s
        0xf2s
        0xfds
        0x8ds
        0xf1s
        0xe8s
        0x96s
        0xe8s
        0x8ds
        0xfes
        0xfes
        0x8ds
        0xf1s
        0xf8s
        0x80s
        0xf1s
        0xf2s
        0x8ds
        0xfes
        0xf7s
        0xf8s
        0x80s
        0xf2s
        0xfds
        0x8ds
        0xf1s
        0xe8s
        0x92s
        0xe8s
        0x97s
        0x95s
        0xacs
        0xa2s
        0xc2s
        0x8ds
        0xfes
        0xfes
        0x8ds
        0xf1s
        0xf8s
        0x80s
        0xf1s
        0xf2s
        0x8ds
        0xfes
        0xf7s
        0xf8s
        0x8ds
        0xfes
        0x81s
        0x8ds
        0x8es
        0x8bs
        0xfes
        0xf8s
        0xfcs
        0x88s
        0x88s
        0x8bs
        0xfds
        0xf2s
        0xf7s
        0xfas
        0x8ds
        0xfes
        0x95s
        0x82s
        0xe8s
        0xa4s
        0xe8s
        0x9fs
        0xf2s
        0xf7s
        0x89s
        0x8es
        0x8ds
        0xf8s
        0x8ds
        0xfes
        0xfes
        0x8ds
        0xf1s
        0xf8s
        0x80s
        0xf1s
        0xf2s
        0x8ds
        0xfes
        0xf7s
        0xf8s
        0x8ds
        0xfes
        0x81s
        0x8ds
        0x8es
        0x8bs
        0xfes
        0xf8s
        0xfcs
        0x88s
        0x88s
        0x8bs
        0xfds
        0xf2s
        0xf7s
        0xfas
        0x8ds
        0xfes
        0x95s
        0x82s
        0xe8s
        0x94s
        0xe8s
        0xfcs
        0xfes
        0xf7s
        0x8ds
        0xfes
        0x8bs
        0xf8s
        0x82s
        0x90s
        0xe8s
        0x91s
        0xe8s
        0xfbs
        0xfas
        0xfcs
        0xf4s
        0xf0s
        0x8bs
        0x88s
        0x8es
        0xf7s
        0xfds
        0xf8s
        0xf2s
        0xf6s
        0xfas
        0xf0s
        0xfes
        0xf8s
        0xf1s
        0xfes
        0xf2s
        0xf0s
        0xf1s
        0x8ds
        0xe8s
        0x96s
        0xe8s
        0x8ds
        0xfes
        0xfes
        0x8ds
        0xf1s
        0xf8s
        0x80s
        0xf1s
        0xf2s
        0x8ds
        0xfes
        0xf7s
        0xf8s
        0xf1s
        0xfes
        0xf2s
        0xf0s
        0xf1s
        0x8ds
        0xe8s
        0x92s
        0xe8s
        0x97s
        0x95s
        0xacs
        0xa2s
        0xc2s
        0x86s
        0xc2s
    .end array-data

    :array_3
    .array-data 2
        0xc2s
        0xc2s
        0x9as
        0xf2s
        0xffs
        0xfds
        0xfes
        0xffs
        0xe8s
        0xbes
        0xb3s
        0xf8s
        0xbds
        0xebs
        0xb8s
        0xbes
        0xb4s
        0xbcs
        0xb5s
        0xeds
        0xf8s
        0xe9s
        0xebs
        0xbcs
        0xbas
        0xb0s
        0xecs
        0xb0s
        0xb6s
        0xb5s
        0xf8s
        0xbfs
        0xb0s
        0xbes
        0xbfs
        0xc2s
        0xc2s
        0xc2s
        0x89s
        0x8bs
        0xfes
        0xfcs
        0xf2s
        0x8cs
        0xf2s
        0x88s
        0xf7s
        0xe8s
        0xf1s
        0xf2s
        0xf0s
        0xf1s
        0x89s
        0xe8s
        0xffs
        0xf5s
        0x88s
        0xfas
        0x8ds
        0xa2s
        0xc2s
        0xc2s
        0xc2s
        0x9as
        0xfes
        0xf5s
        0x8cs
        0xfes
        0xc2s
        0xc2s
        0xc2s
        0x89s
        0x8bs
        0xfes
        0xfcs
        0xf2s
        0x8cs
        0xf2s
        0x88s
        0xf7s
        0xe8s
        0xf6s
        0xfes
        0xfds
        0xf2s
        0x8es
        0xf6s
        0x89s
        0xe8s
        0xffs
        0xf5s
        0x88s
        0xfas
        0x8ds
        0xa2s
        0xc2s
        0xc2s
        0xc2s
        0x9as
        0xfes
        0xf7s
        0xfds
        0xf2s
        0xffs
        0xc2s
        0xc2s
        0xc2s
        0x8es
        0xf7s
        0xf2s
        0xffs
        0x88s
        0x8bs
        0xf6s
        0xe8s
        0x8fs
        0xfes
        0xfcs
        0xa9s
        0xe8s
        0xf0s
        0x8bs
        0xf2s
        0xfds
        0xf8s
        0x8bs
        0x88s
        0xf2s
        0xf8s
        0x8cs
        0x8ds
        0xfas
        0x8bs
        0x8ds
        0xa2s
        0xc2s
        0x8es
        0xf7s
        0xf2s
        0xffs
        0x88s
        0x8bs
        0xf6s
        0xe8s
        0x8fs
        0xfes
        0xfcs
        0xa9s
        0xe8s
        0xf0s
        0x8bs
        0xf2s
        0xfds
        0xf8s
        0x8bs
        0x88s
        0xf2s
        0xf8s
        0xfes
        0xf7s
        0xfds
        0xa2s
        0xc2s
        0xc2s
        0x8fs
        0xfas
        0x8bs
        0x82s
        0xf2s
        0xf7s
        0xf0s
        0xe8s
        0x8fs
        0xfes
        0xfcs
        0xa9s
        0xe8s
        0x8ds
        0xfes
        0x81s
        0x8ds
        0x8es
        0x8bs
        0xfes
        0xbas
        0x88s
        0x88s
        0x8bs
        0xfds
        0xf2s
        0xf7s
        0xfas
        0x8ds
        0xfes
        0xa2s
        0xc2s
        0x8fs
        0xfas
        0x8bs
        0x82s
        0xf2s
        0xf7s
        0xf0s
        0xe8s
        0x8fs
        0xfes
        0xfcs
        0xa9s
        0xe8s
        0x8ds
        0xfes
        0xfes
        0x8ds
        0xf1s
        0xf8s
        0x80s
        0xf1s
        0xf2s
        0x8ds
        0xfes
        0xf7s
        0xf8s
        0x8ds
        0xfes
        0x81s
        0x8ds
        0x8es
        0x8bs
        0xfes
        0xf8s
        0xfcs
        0x88s
        0x88s
        0x8bs
        0xfds
        0xf2s
        0xf7s
        0xfas
        0x8ds
        0xfes
        0xa2s
        0xc2s
        0x8es
        0xf7s
        0xf2s
        0xffs
        0x88s
        0x8bs
        0xf6s
        0xe8s
        0x8cs
        0xfas
        0xf6s
        0x89s
        0xf5s
        0xfes
        0x8bs
        0xa9s
        0xbbs
        0xe8s
        0xf2s
        0xf7s
        0x89s
        0x8es
        0x8ds
        0xb0s
        0xf6s
        0xfas
        0xf0s
        0xfes
        0xeds
        0xfes
        0x81s
        0x8ds
        0x8es
        0x8bs
        0xfes
        0xa2s
        0xc2s
        0x8es
        0xf7s
        0xf2s
        0xffs
        0x88s
        0x8bs
        0xf6s
        0xe8s
        0x8cs
        0xfas
        0xf6s
        0x89s
        0xf5s
        0xfes
        0x8bs
        0xa9s
        0xbbs
        0xe8s
        0x8ds
        0xfes
        0xfes
        0x8ds
        0xf1s
        0xf8s
        0x80s
        0xf1s
        0xf2s
        0x8ds
        0xfes
        0xf7s
        0xf8s
        0x8ds
        0xfes
        0x81s
        0x8ds
        0x8es
        0x8bs
        0xfes
        0xa2s
        0xc2s
        0x8es
        0xf7s
        0xf2s
        0xffs
        0x88s
        0x8bs
        0xf6s
        0xe8s
        0x8cs
        0xfas
        0xf6s
        0x89s
        0xf5s
        0xfes
        0x8bs
        0xa9s
        0xbbs
        0xe8s
        0x8ds
        0xfes
        0xfes
        0x8ds
        0xf1s
        0xf8s
        0x80s
        0xf1s
        0xf2s
        0x8ds
        0xfes
        0xf7s
        0xf8s
        0x8ds
        0xfas
        0xfbs
        0xf5s
        0xfes
        0xf8s
        0x8ds
        0xfes
        0x81s
        0x8ds
        0x8es
        0x8bs
        0xfes
        0xa2s
        0xc2s
        0xc2s
        0x8es
        0xf7s
        0xf2s
        0xffs
        0x88s
        0x8bs
        0xf6s
        0xe8s
        0xffs
        0xf5s
        0x88s
        0xfas
        0x8ds
        0xe8s
        0x8ds
        0xfes
        0xfes
        0x8ds
        0xf1s
        0xf8s
        0x80s
        0xf1s
        0xf2s
        0x8ds
        0xfes
        0xf7s
        0xf8s
        0xf2s
        0xf7s
        0x8ds
        0xfes
        0xf7s
        0x8cs
        0xf2s
        0x8ds
        0x82s
        0xf8s
        0x8bs
        0xfas
        0x8ds
        0xf2s
        0x88s
        0xa2s
        0xc2s
        0xc2s
        0x8fs
        0x88s
        0xf2s
        0xfds
        0xe8s
        0xf6s
        0xfas
        0xf2s
        0xf7s
        0x9fs
        0x90s
        0xc2s
        0x84s
        0xc2s
        0x8fs
        0xfes
        0xfcs
        0xaas
        0xe8s
        0x8cs
        0x88s
        0x8es
        0x8bs
        0xfcs
        0xfes
        0xe8s
        0xa4s
        0xe8s
        0x8ds
        0xfes
        0x81s
        0x8ds
        0x8es
        0x8bs
        0xfes
        0xa9s
        0xbbs
        0x9fs
        0xf2s
        0xf7s
        0x89s
        0x8es
        0x8ds
        0xb0s
        0xf6s
        0xfas
        0xf0s
        0xfes
        0xeds
        0xfes
        0x81s
        0x8ds
        0x8es
        0x8bs
        0xfes
        0x93s
        0xe8s
        0x8ds
        0xfes
        0x81s
        0x8ds
        0x8es
        0x8bs
        0xfes
        0xbas
        0x88s
        0x88s
        0x8bs
        0xfds
        0xf2s
        0xf7s
        0xfas
        0x8ds
        0xfes
        0x90s
        0x95s
        0x8bs
        0xf0s
        0xfbs
        0xa2s
        0xc2s
        0xc2s
        0xf2s
        0xffs
        0xe8s
        0x9fs
        0xfas
        0xf7s
        0x82s
        0x9fs
        0xf5s
        0xfes
        0x8cs
        0x8cs
        0xeds
        0xf1s
        0xfas
        0xf7s
        0x9fs
        0x8ds
        0xfes
        0x81s
        0x8ds
        0x8es
        0x8bs
        0xfes
        0xbas
        0x88s
        0x88s
        0x8bs
        0xfds
        0xf2s
        0xf7s
        0xfas
        0x8ds
        0xfes
        0x93s
        0xe8s
        0xf0s
        0x8bs
        0xf2s
        0xfds
        0xf8s
        0x8bs
        0x88s
        0xf2s
        0xf8s
        0x8cs
        0x8ds
        0xfas
        0x8bs
        0x8ds
        0x90s
        0x90s
        0xe8s
        0x85s
        0x85s
        0xc2s
        0xfas
        0xf7s
        0x82s
        0x9fs
        0xf0s
        0x8bs
        0xfes
        0xfas
        0x8ds
        0xfes
        0x8bs
        0xeds
        0xf1s
        0xfas
        0xf7s
        0x9fs
        0x8ds
        0xfes
        0x81s
        0x8ds
        0x8es
        0x8bs
        0xfes
        0xbas
        0x88s
        0x88s
        0x8bs
        0xfds
        0xf2s
        0xf7s
        0xfas
        0x8ds
        0xfes
        0x93s
        0xe8s
        0xf0s
        0x8bs
        0xf2s
        0xfds
        0xf8s
        0x8bs
        0x88s
        0xf2s
        0xf8s
        0xfes
        0xf7s
        0xfds
        0x90s
        0x90s
        0xe8s
        0x85s
        0x85s
        0xc2s
        0xfas
        0xf7s
        0x82s
        0x9fs
        0xf0s
        0x8bs
        0xfes
        0xfas
        0x8ds
        0xfes
        0x8bs
        0xeds
        0xf1s
        0xfas
        0xf7s
        0x9fs
        0xfas
        0xfbs
        0x8cs
        0x9fs
        0x8ds
        0xfes
        0xfes
        0x8ds
        0xf1s
        0xf8s
        0x80s
        0xf1s
        0xf2s
        0x8ds
        0xfes
        0xf7s
        0xf8s
        0x8ds
        0xfes
        0x81s
        0x8ds
        0x8es
        0x8bs
        0xfes
        0xf8s
        0xfcs
        0x88s
        0x88s
        0x8bs
        0xfds
        0xf2s
        0xf7s
        0xfas
        0x8ds
        0xfes
        0xe8s
        0x94s
        0xe8s
        0x8fs
        0xfes
        0xfcs
        0xa9s
        0x9fs
        0x97s
        0x95s
        0xacs
        0x90s
        0x90s
        0x93s
        0xe8s
        0x8fs
        0xfes
        0xfcs
        0xa9s
        0x9fs
        0x97s
        0x95s
        0xacs
        0x90s
        0x90s
        0x90s
        0x90s
        0xc2s
        0x84s
        0xc2s
        0xf0s
        0xf5s
        0xf8s
        0xbds
        0x8bs
        0xfas
        0xf0s
        0xbas
        0x88s
        0xf5s
        0x88s
        0x8bs
        0xe8s
        0xa4s
        0xe8s
        0x8fs
        0xfes
        0xfcs
        0xabs
        0x9fs
        0x8cs
        0x88s
        0x8es
        0x8bs
        0xfcs
        0xfes
        0x93s
        0xe8s
        0xa8s
        0x95s
        0x97s
        0x90s
        0xa2s
        0xc2s
        0x8bs
        0xfes
        0x8ds
        0x8es
        0x8bs
        0xf7s
        0xa2s
        0xc2s
        0x86s
        0xc2s
        0xfes
        0xf5s
        0x8cs
        0xfes
        0xc2s
        0x84s
        0xc2s
        0x8fs
        0xfes
        0xfcs
        0xaas
        0xe8s
        0xfds
        0x8cs
        0x8ds
        0xf8s
        0xfcs
        0x88s
        0xf5s
        0x88s
        0x8bs
        0xe8s
        0xa4s
        0xe8s
        0x8cs
        0x88s
        0x8es
        0x8bs
        0xfcs
        0xfes
        0xa2s
        0xc2s
        0xc2s
        0xffs
        0xf5s
        0x88s
        0xfas
        0x8ds
        0xe8s
        0x8ds
        0xfes
        0xfes
        0x8ds
        0xf1s
        0xe8s
        0xa4s
        0xe8s
        0x8ds
        0xfes
        0x81s
        0x8ds
        0x8es
        0x8bs
        0xfes
        0xa9s
        0xbbs
        0x9fs
        0x8ds
        0xfes
        0xfes
        0x8ds
        0xf1s
        0xf8s
        0x80s
        0xf1s
        0xf2s
        0x8ds
        0xfes
        0xf7s
        0xf8s
        0x8ds
        0xfes
        0x81s
        0x8ds
        0x8es
        0x8bs
        0xfes
        0x93s
        0xe8s
        0x8ds
        0xfes
        0xfes
        0x8ds
        0xf1s
        0xf8s
        0x80s
        0xf1s
        0xf2s
        0x8ds
        0xfes
        0xf7s
        0xf8s
        0x8ds
        0xfes
        0x81s
        0x8ds
        0x8es
        0x8bs
        0xfes
        0xf8s
        0xfcs
        0x88s
        0x88s
        0x8bs
        0xfds
        0xf2s
        0xf7s
        0xfas
        0x8ds
        0xfes
        0x90s
        0x95s
        0x8bs
        0xa2s
        0xc2s
        0xf2s
        0xffs
        0xe8s
        0x9fs
        0x8ds
        0xfes
        0xfes
        0x8ds
        0xf1s
        0xe8s
        0xa5s
        0xe8s
        0x97s
        0x95s
        0x97s
        0x90s
        0xc2s
        0x84s
        0xc2s
        0xffs
        0xf5s
        0x88s
        0xfas
        0x8ds
        0xe8s
        0xfas
        0xf6s
        0x88s
        0x8es
        0xf7s
        0x8ds
        0xf8s
        0xfds
        0x8cs
        0x8ds
        0xe8s
        0xa4s
        0xe8s
        0x8ds
        0xfes
        0xfes
        0x8ds
        0xf1s
        0xe8s
        0x91s
        0xe8s
        0x8ds
        0xfes
        0xfes
        0x8ds
        0xf1s
        0xf8s
        0x80s
        0xf1s
        0xf2s
        0x8ds
        0xfes
        0xf7s
        0xf8s
        0xf2s
        0xf7s
        0x8ds
        0xfes
        0xf7s
        0x8cs
        0xf2s
        0x8ds
        0x82s
        0xf8s
        0x8bs
        0xfas
        0x8ds
        0xf2s
        0x88s
        0xa2s
        0xc2s
        0xffs
        0xf5s
        0x88s
        0xfas
        0x8ds
        0xe8s
        0xfas
        0xf6s
        0x88s
        0x8es
        0xf7s
        0x8ds
        0xf8s
        0x8cs
        0x8bs
        0xfcs
        0xe8s
        0xa4s
        0xe8s
        0xa8s
        0x95s
        0x97s
        0xe8s
        0x94s
        0xe8s
        0xfas
        0xf6s
        0x88s
        0x8es
        0xf7s
        0x8ds
        0xf8s
        0xfds
        0x8cs
        0x8ds
        0xa2s
        0xc2s
        0xc2s
        0x8fs
        0xfes
        0xfcs
        0xaas
        0xe8s
        0x80s
        0xf1s
        0xf2s
        0x8ds
        0xfes
        0xf8s
        0x8ds
        0xfes
        0xfes
        0x8ds
        0xf1s
        0xa2s
        0xc2s
        0xffs
        0xf5s
        0x88s
        0xfas
        0x8ds
        0xe8s
        0xf0s
        0xfas
        0xf6s
        0xf6s
        0xf6s
        0xfas
        0xf8s
        0xfds
        0xfes
        0xfcs
        0x88s
        0xfds
        0xfes
        0xe8s
        0xa4s
        0xe8s
        0x8ds
        0xfes
        0x81s
        0x8ds
        0x8es
        0x8bs
        0xfes
        0xa9s
        0xbbs
        0x9fs
        0x8ds
        0xfes
        0xfes
        0x8ds
        0xf1s
        0xf8s
        0x80s
        0xf1s
        0xf2s
        0x8ds
        0xfes
        0xf7s
        0xf8s
        0x8ds
        0xfas
        0xfbs
        0xf5s
        0xfes
        0xf8s
        0x8ds
        0xfes
        0x81s
        0x8ds
        0x8es
        0x8bs
        0xfes
        0x93s
        0xe8s
        0x8fs
        0xfes
        0xfcs
        0xa9s
        0x9fs
        0xfds
        0x8cs
        0x8ds
        0xf8s
        0xfcs
        0x88s
        0xf5s
        0x88s
        0x8bs
        0x95s
        0x8bs
        0x93s
        0xe8s
        0x97s
        0x90s
        0x90s
        0x95s
        0xf0s
        0xa2s
        0xc2s
        0xffs
        0xf5s
        0x88s
        0xfas
        0x8ds
        0xe8s
        0x8ds
        0x88s
        0xf7s
        0xfes
        0xf8s
        0xf6s
        0xfas
        0x89s
        0x89s
        0xf2s
        0xf7s
        0xf0s
        0xe8s
        0xa4s
        0xe8s
        0x8ds
        0xfes
        0x81s
        0x8ds
        0x8es
        0x8bs
        0xfes
        0xa9s
        0xbbs
        0x9fs
        0x8ds
        0xfes
        0xfes
        0x8ds
        0xf1s
        0xf8s
        0x80s
        0xf1s
        0xf2s
        0x8ds
        0xfes
        0xf7s
        0xf8s
        0x8ds
        0xfas
        0xfbs
        0xf5s
        0xfes
        0xf8s
        0x8ds
        0xfes
        0x81s
        0x8ds
        0x8es
        0x8bs
        0xfes
        0x93s
        0xe8s
        0x8fs
        0xfes
        0xfcs
        0xa9s
        0x9fs
        0xf0s
        0xfas
        0xf6s
        0xf6s
        0xf6s
        0xfas
        0xf8s
        0xfds
        0xfes
        0xfcs
        0x88s
        0xfds
        0xfes
        0x93s
        0xe8s
        0x97s
        0x90s
        0x90s
        0x95s
        0xfbs
        0xa2s
        0xc2s
        0xffs
        0xf5s
        0x88s
        0xfas
        0x8ds
        0xe8s
        0xfas
        0xfds
        0xf3s
        0x8es
        0x8cs
        0x8ds
        0xf8s
        0x8ds
        0x88s
        0xf7s
        0xfes
        0xf8s
        0xf6s
        0xfas
        0x89s
        0x89s
        0xf2s
        0xf7s
        0xf0s
        0xe8s
        0xa4s
        0xe8s
        0x8ds
        0x88s
        0xf7s
        0xfes
        0xf8s
        0xf6s
        0xfas
        0x89s
        0x89s
        0xf2s
        0xf7s
        0xf0s
        0xe8s
        0x91s
        0xe8s
        0xfas
        0xf6s
        0x88s
        0x8es
        0xf7s
        0x8ds
        0xf8s
        0xfds
        0x8cs
        0x8ds
        0xe8s
        0x92s
        0xe8s
        0xf0s
        0xfas
        0xf6s
        0xf6s
        0xf6s
        0xfas
        0xf8s
        0xfds
        0xfes
        0xfcs
        0x88s
        0xfds
        0xfes
        0xe8s
        0x91s
        0xe8s
        0xfas
        0xf6s
        0x88s
        0x8es
        0xf7s
        0x8ds
        0xf8s
        0x8cs
        0x8bs
        0xfcs
        0xa2s
        0xc2s
        0x80s
        0xf1s
        0xf2s
        0x8ds
        0xfes
        0xf8s
        0x8ds
        0xfes
        0xfes
        0x8ds
        0xf1s
        0x95s
        0x8bs
        0xe8s
        0xa4s
        0xe8s
        0x8ds
        0xfes
        0x81s
        0x8ds
        0x8es
        0x8bs
        0xfes
        0xa9s
        0xbbs
        0x9fs
        0x8ds
        0xfes
        0xfes
        0x8ds
        0xf1s
        0xf8s
        0x80s
        0xf1s
        0xf2s
        0x8ds
        0xfes
        0xf7s
        0xf8s
        0x8ds
        0xfas
        0xfbs
        0xf5s
        0xfes
        0xf8s
        0x8ds
        0xfes
        0x81s
        0x8ds
        0x8es
        0x8bs
        0xfes
        0x93s
        0xe8s
        0x8fs
        0xfes
        0xfcs
        0xa9s
        0x9fs
        0xfas
        0xfds
        0xf3s
        0x8es
        0x8cs
        0x8ds
        0xf8s
        0x8ds
        0x88s
        0xf7s
        0xfes
        0xf8s
        0xf6s
        0xfas
        0x89s
        0x89s
        0xf2s
        0xf7s
        0xf0s
        0x93s
        0xe8s
        0x97s
        0x90s
        0x90s
        0x95s
        0x8bs
        0xa2s
        0xc2s
        0xc2s
        0xf0s
        0xfas
        0xf6s
        0xf6s
        0xf6s
        0xfas
        0xf8s
        0xfds
        0xfes
        0xfcs
        0x88s
        0xfds
        0xfes
        0xe8s
        0xa4s
        0xe8s
        0x8ds
        0xfes
        0x81s
        0x8ds
        0x8es
        0x8bs
        0xfes
        0xa9s
        0xbbs
        0x9fs
        0x8ds
        0xfes
        0xfes
        0x8ds
        0xf1s
        0xf8s
        0x80s
        0xf1s
        0xf2s
        0x8ds
        0xfes
        0xf7s
        0xf8s
        0x8ds
        0xfas
        0xfbs
        0xf5s
        0xfes
        0xf8s
        0x8ds
        0xfes
        0x81s
        0x8ds
        0x8es
        0x8bs
        0xfes
        0x93s
        0xe8s
        0x8fs
        0xfes
        0xfcs
        0xa9s
        0x9fs
        0xfds
        0x8cs
        0x8ds
        0xf8s
        0xfcs
        0x88s
        0xf5s
        0x88s
        0x8bs
        0x95s
        0xf0s
        0x93s
        0xe8s
        0x97s
        0x90s
        0x90s
        0x95s
        0xf0s
        0xa2s
        0xc2s
        0x8ds
        0x88s
        0xf7s
        0xfes
        0xf8s
        0xf6s
        0xfas
        0x89s
        0x89s
        0xf2s
        0xf7s
        0xf0s
        0xe8s
        0xa4s
        0xe8s
        0x8ds
        0xfes
        0x81s
        0x8ds
        0x8es
        0x8bs
        0xfes
        0xa9s
        0xbbs
        0x9fs
        0x8ds
        0xfes
        0xfes
        0x8ds
        0xf1s
        0xf8s
        0x80s
        0xf1s
        0xf2s
        0x8ds
        0xfes
        0xf7s
        0xf8s
        0x8ds
        0xfas
        0xfbs
        0xf5s
        0xfes
        0xf8s
        0x8ds
        0xfes
        0x81s
        0x8ds
        0x8es
        0x8bs
        0xfes
        0x93s
        0xe8s
        0x8fs
        0xfes
        0xfcs
        0xa9s
        0x9fs
        0xf0s
        0xfas
        0xf6s
        0xf6s
        0xf6s
        0xfas
        0xf8s
        0xfds
        0xfes
        0xfcs
        0x88s
        0xfds
        0xfes
        0x93s
        0xe8s
        0x97s
        0x90s
        0x90s
        0x95s
        0xfbs
        0xa2s
        0xc2s
        0xfas
        0xfds
        0xf3s
        0x8es
        0x8cs
        0x8ds
        0xf8s
        0x8ds
        0x88s
        0xf7s
        0xfes
        0xf8s
        0xf6s
        0xfas
        0x89s
        0x89s
        0xf2s
        0xf7s
        0xf0s
        0xe8s
        0xa4s
        0xe8s
        0x8ds
        0x88s
        0xf7s
        0xfes
        0xf8s
        0xf6s
        0xfas
        0x89s
        0x89s
        0xf2s
        0xf7s
        0xf0s
        0xe8s
        0x91s
        0xe8s
        0xfas
        0xf6s
        0x88s
        0x8es
        0xf7s
        0x8ds
        0xf8s
        0xfds
        0x8cs
        0x8ds
        0xe8s
        0x92s
        0xe8s
        0xf0s
        0xfas
        0xf6s
        0xf6s
        0xf6s
        0xfas
        0xf8s
        0xfds
        0xfes
        0xfcs
        0x88s
        0xfds
        0xfes
        0xe8s
        0x91s
        0xe8s
        0xfas
        0xf6s
        0x88s
        0x8es
        0xf7s
        0x8ds
        0xf8s
        0x8cs
        0x8bs
        0xfcs
        0xa2s
        0xc2s
        0x80s
        0xf1s
        0xf2s
        0x8ds
        0xfes
        0xf8s
        0x8ds
        0xfes
        0xfes
        0x8ds
        0xf1s
        0x95s
        0xf0s
        0xe8s
        0xa4s
        0xe8s
        0x8ds
        0xfes
        0x81s
        0x8ds
        0x8es
        0x8bs
        0xfes
        0xa9s
        0xbbs
        0x9fs
        0x8ds
        0xfes
        0xfes
        0x8ds
        0xf1s
        0xf8s
        0x80s
        0xf1s
        0xf2s
        0x8ds
        0xfes
        0xf7s
        0xf8s
        0x8ds
        0xfas
        0xfbs
        0xf5s
        0xfes
        0xf8s
        0x8ds
        0xfes
        0x81s
        0x8ds
        0x8es
        0x8bs
        0xfes
        0x93s
        0xe8s
        0x8fs
        0xfes
        0xfcs
        0xa9s
        0x9fs
        0xfas
        0xfds
        0xf3s
        0x8es
        0x8cs
        0x8ds
        0xf8s
        0x8ds
        0x88s
        0xf7s
        0xfes
        0xf8s
        0xf6s
        0xfas
        0x89s
        0x89s
        0xf2s
        0xf7s
        0xf0s
        0x93s
        0xe8s
        0x97s
        0x90s
        0x90s
        0x95s
        0x8bs
        0xa2s
        0xc2s
        0xc2s
        0xf0s
        0xfas
        0xf6s
        0xf6s
        0xf6s
        0xfas
        0xf8s
        0xfds
        0xfes
        0xfcs
        0x88s
        0xfds
        0xfes
        0xe8s
        0xa4s
        0xe8s
        0x8ds
        0xfes
        0x81s
        0x8ds
        0x8es
        0x8bs
        0xfes
        0xa9s
        0xbbs
        0x9fs
        0x8ds
        0xfes
        0xfes
        0x8ds
        0xf1s
        0xf8s
        0x80s
        0xf1s
        0xf2s
        0x8ds
        0xfes
        0xf7s
        0xf8s
        0x8ds
        0xfas
        0xfbs
        0xf5s
        0xfes
        0xf8s
        0x8ds
        0xfes
        0x81s
        0x8ds
        0x8es
        0x8bs
        0xfes
        0x93s
        0xe8s
        0x8fs
        0xfes
        0xfcs
        0xa9s
        0x9fs
        0xfds
        0x8cs
        0x8ds
        0xf8s
        0xfcs
        0x88s
        0xf5s
        0x88s
        0x8bs
        0x95s
        0xfbs
        0x93s
        0xe8s
        0x97s
        0x90s
        0x90s
        0x95s
        0xf0s
        0xa2s
        0xc2s
        0x8ds
        0x88s
        0xf7s
        0xfes
        0xf8s
        0xf6s
        0xfas
        0x89s
        0x89s
        0xf2s
        0xf7s
        0xf0s
        0xe8s
        0xa4s
        0xe8s
        0x8ds
        0xfes
        0x81s
        0x8ds
        0x8es
        0x8bs
        0xfes
        0xa9s
        0xbbs
        0x9fs
        0x8ds
        0xfes
        0xfes
        0x8ds
        0xf1s
        0xf8s
        0x80s
        0xf1s
        0xf2s
        0x8ds
        0xfes
        0xf7s
        0xf8s
        0x8ds
        0xfas
        0xfbs
        0xf5s
        0xfes
        0xf8s
        0x8ds
        0xfes
        0x81s
        0x8ds
        0x8es
        0x8bs
        0xfes
        0x93s
        0xe8s
        0x8fs
        0xfes
        0xfcs
        0xa9s
        0x9fs
        0xf0s
        0xfas
        0xf6s
        0xf6s
        0xf6s
        0xfas
        0xf8s
        0xfds
        0xfes
        0xfcs
        0x88s
        0xfds
        0xfes
        0x93s
        0xe8s
        0x97s
        0x90s
        0x90s
        0x95s
        0xfas
        0xa2s
        0xc2s
        0xfas
        0xfds
        0xf3s
        0x8es
        0x8cs
        0x8ds
        0xf8s
        0x8ds
        0x88s
        0xf7s
        0xfes
        0xf8s
        0xf6s
        0xfas
        0x89s
        0x89s
        0xf2s
        0xf7s
        0xf0s
        0xe8s
        0xa4s
        0xe8s
        0x8ds
        0x88s
        0xf7s
        0xfes
        0xf8s
        0xf6s
        0xfas
        0x89s
        0x89s
        0xf2s
        0xf7s
        0xf0s
        0xe8s
        0x91s
        0xe8s
        0xfas
        0xf6s
        0x88s
        0x8es
        0xf7s
        0x8ds
        0xf8s
        0xfds
        0x8cs
        0x8ds
        0xe8s
        0x92s
        0xe8s
        0xf0s
        0xfas
        0xf6s
        0xf6s
        0xf6s
        0xfas
        0xf8s
        0xfds
        0xfes
        0xfcs
        0x88s
        0xfds
        0xfes
        0xe8s
        0x91s
        0xe8s
        0xfas
        0xf6s
        0x88s
        0x8es
        0xf7s
        0x8ds
        0xf8s
        0x8cs
        0x8bs
        0xfcs
        0xa2s
        0xc2s
        0x80s
        0xf1s
        0xf2s
        0x8ds
        0xfes
        0xf8s
        0x8ds
        0xfes
        0xfes
        0x8ds
        0xf1s
        0x95s
        0xfbs
        0xe8s
        0xa4s
        0xe8s
        0x8ds
        0xfes
        0x81s
        0x8ds
        0x8es
        0x8bs
        0xfes
        0xa9s
        0xbbs
        0x9fs
        0x8ds
        0xfes
        0xfes
        0x8ds
        0xf1s
        0xf8s
        0x80s
        0xf1s
        0xf2s
        0x8ds
        0xfes
        0xf7s
        0xf8s
        0x8ds
        0xfas
        0xfbs
        0xf5s
        0xfes
        0xf8s
        0x8ds
        0xfes
        0x81s
        0x8ds
        0x8es
        0x8bs
        0xfes
        0x93s
        0xe8s
        0x8fs
        0xfes
        0xfcs
        0xa9s
        0x9fs
        0xfas
        0xfds
        0xf3s
        0x8es
        0x8cs
        0x8ds
        0xf8s
        0x8ds
        0x88s
        0xf7s
        0xfes
        0xf8s
        0xf6s
        0xfas
        0x89s
        0x89s
        0xf2s
        0xf7s
        0xf0s
        0x93s
        0xe8s
        0x97s
        0x90s
        0x90s
        0x95s
        0x8bs
        0xa2s
        0xc2s
        0xc2s
        0xfds
        0x8cs
        0x8ds
        0xf8s
        0xfcs
        0x88s
        0xf5s
        0x88s
        0x8bs
        0xe8s
        0xa4s
        0xe8s
        0x80s
        0xf1s
        0xf2s
        0x8ds
        0xfes
        0xf8s
        0x8ds
        0xfes
        0xfes
        0x8ds
        0xf1s
        0xa2s
        0xc2s
        0x86s
        0xc2s
        0xc2s
        0xf0s
        0xf5s
        0xf8s
        0xbds
        0x8bs
        0xfas
        0xf0s
        0xbas
        0x88s
        0xf5s
        0x88s
        0x8bs
        0xe8s
        0xa4s
        0xe8s
        0x8fs
        0xfes
        0xfcs
        0xabs
        0x9fs
        0xfds
        0x8cs
        0x8ds
        0xf8s
        0xfcs
        0x88s
        0xf5s
        0x88s
        0x8bs
        0x93s
        0xe8s
        0xa8s
        0x95s
        0x97s
        0x90s
        0xa2s
        0xc2s
        0x86s
        0xc2s
        0x86s
        0xc2s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->S:[C

    invoke-static {v0}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->T:[C

    invoke-static {v1}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/cyberlink/clgpuimage/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->o:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->q:I

    const/16 v0, 0x5a

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->N:I

    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->O:F

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->P:Ljava/lang/Object;

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lfc;->v(Ljava/nio/ByteBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->t:Ljava/nio/FloatBuffer;

    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sget-object v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->Q:[C

    invoke-static {v1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->L:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->D:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->E:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->F:F

    iput v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->G:F

    iput v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->H:F

    iput v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->I:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->K:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->J:[B

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->M:I

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 14

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->B:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->m:[F

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->C:I

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->n:[F

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->t:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->M:I

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->N:I

    add-int/lit16 v5, v4, 0x10e

    rem-int/lit16 v5, v5, 0x168

    const/16 v6, 0x8

    const/4 v7, 0x7

    const/4 v8, 0x6

    const/4 v9, 0x3

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x2

    sget-object v13, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->R:[F

    if-ne v2, v5, :cond_0

    new-array v2, v6, [F

    aget v4, v13, v11

    aput v4, v2, v3

    aget v4, v13, v10

    aput v4, v2, v1

    aget v4, v13, v3

    aput v4, v2, v12

    aget v4, v13, v1

    aput v4, v2, v9

    aget v4, v13, v8

    aput v4, v2, v11

    aget v4, v13, v7

    aput v4, v2, v10

    aget v4, v13, v12

    aput v4, v2, v8

    aget v4, v13, v9

    aput v4, v2, v7

    goto :goto_0

    :cond_0
    add-int/lit16 v5, v4, 0xb4

    rem-int/lit16 v5, v5, 0x168

    if-ne v2, v5, :cond_1

    new-array v2, v6, [F

    aget v4, v13, v8

    aput v4, v2, v3

    aget v4, v13, v7

    aput v4, v2, v1

    aget v4, v13, v11

    aput v4, v2, v12

    aget v4, v13, v10

    aput v4, v2, v9

    aget v4, v13, v12

    aput v4, v2, v11

    aget v4, v13, v9

    aput v4, v2, v10

    aget v4, v13, v3

    aput v4, v2, v8

    aget v4, v13, v1

    aput v4, v2, v7

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v4, 0x5a

    rem-int/lit16 v4, v4, 0x168

    if-ne v2, v4, :cond_2

    new-array v2, v6, [F

    aget v4, v13, v12

    aput v4, v2, v3

    aget v4, v13, v9

    aput v4, v2, v1

    aget v4, v13, v8

    aput v4, v2, v12

    aget v4, v13, v7

    aput v4, v2, v9

    aget v4, v13, v3

    aput v4, v2, v11

    aget v4, v13, v1

    aput v4, v2, v10

    aget v4, v13, v11

    aput v4, v2, v8

    aget v4, v13, v10

    aput v4, v2, v7

    goto :goto_0

    :cond_2
    new-array v2, v6, [F

    aget v4, v13, v3

    aput v4, v2, v3

    aget v4, v13, v1

    aput v4, v2, v1

    aget v4, v13, v12

    aput v4, v2, v12

    aget v4, v13, v9

    aput v4, v2, v9

    aget v4, v13, v11

    aput v4, v2, v11

    aget v4, v13, v10

    aput v4, v2, v10

    aget v4, v13, v8

    aput v4, v2, v8

    aget v4, v13, v7

    aput v4, v2, v7

    :goto_0
    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->s:I

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->t:Ljava/nio/FloatBuffer;

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->s:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->o:I

    const/16 v2, 0xde1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->o:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->p:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_3
    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->q:I

    if-eq v0, v3, :cond_4

    const v0, 0x84c2

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->q:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->r:I

    invoke-static {p0, v12}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_4
    return-void
.end method

.method public final j(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;)V
    .locals 12

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->P:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;->m_mouth_mask_data:[B

    if-eqz v0, :cond_8

    iget v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;->m_mask_width:I

    if-eqz v2, :cond_8

    iget v3, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;->m_mask_height:I

    if-nez v3, :cond_0

    goto/16 :goto_7

    :cond_0
    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->J:[B

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;->m_rotation:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->M:I

    iget v4, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;->m_roi_x:I

    iget v5, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;->m_roi_y:I

    iget v6, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;->m_roi_width:I

    iget v7, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;->m_roi_height:I

    iget v8, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;->m_background_image_width:I

    iget p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;->m_background_image_height:I

    const/16 v9, 0xb4

    if-eqz v0, :cond_3

    if-ne v0, v9, :cond_1

    goto :goto_2

    :cond_1
    iget v0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->h:I

    if-ne v8, v0, :cond_2

    iget v10, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->g:I

    if-eq p1, v10, :cond_4

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_8

    :cond_2
    :goto_0
    iget v10, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->g:I

    int-to-float v10, v10

    int-to-float v11, p1

    div-float/2addr v10, v11

    int-to-float v0, v0

    int-to-float v11, v8

    :goto_1
    div-float/2addr v0, v11

    goto :goto_4

    :cond_3
    :goto_2
    iget v0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->g:I

    if-ne v8, v0, :cond_5

    iget v10, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->h:I

    if-eq p1, v10, :cond_4

    goto :goto_3

    :cond_4
    const/high16 v10, 0x3f800000    # 1.0f

    move v0, v10

    goto :goto_4

    :cond_5
    :goto_3
    int-to-float v0, v0

    int-to-float v10, v8

    div-float v10, v0, v10

    iget v0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->h:I

    int-to-float v0, v0

    int-to-float v11, p1

    goto :goto_1

    :goto_4
    iput v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->D:I

    iput v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->E:I

    int-to-float v2, v4

    iput v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->F:F

    int-to-float v2, v5

    iput v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->G:F

    int-to-float v2, v6

    iput v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->H:F

    int-to-float v3, v7

    iput v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->I:F

    iget v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->w:I

    mul-float/2addr v2, v10

    invoke-virtual {p0, v3, v2}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->setFloat(IF)V

    iget v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->x:I

    iget v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->I:F

    mul-float/2addr v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->setFloat(IF)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->y:I

    iget v2, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->g:I

    int-to-float v2, v2

    invoke-virtual {p0, v0, v2}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->setFloat(IF)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->z:I

    iget v2, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->h:I

    int-to-float v2, v2

    invoke-virtual {p0, v0, v2}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->setFloat(IF)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->M:I

    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz v0, :cond_7

    if-ne v0, v9, :cond_6

    goto :goto_5

    :cond_6
    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->u:I

    iget v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->F:F

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->H:F

    mul-float/2addr v4, v2

    add-float/2addr v4, v3

    int-to-float p1, p1

    div-float/2addr v4, p1

    invoke-virtual {p0, v0, v4}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->setFloat(IF)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->v:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->G:F

    iget v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->I:F

    mul-float/2addr v3, v2

    add-float/2addr v3, v0

    int-to-float v0, v8

    div-float/2addr v3, v0

    invoke-virtual {p0, p1, v3}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->setFloat(IF)V

    goto :goto_6

    :cond_7
    :goto_5
    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->u:I

    iget v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->F:F

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->H:F

    mul-float/2addr v4, v2

    add-float/2addr v4, v3

    int-to-float v3, v8

    div-float/2addr v4, v3

    invoke-virtual {p0, v0, v4}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->setFloat(IF)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->v:I

    iget v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->G:F

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->I:F

    mul-float/2addr v4, v2

    add-float/2addr v4, v3

    int-to-float p1, p1

    div-float/2addr v4, p1

    invoke-virtual {p0, v0, v4}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->setFloat(IF)V

    :goto_6
    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->D:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->E:I

    mul-int/2addr p1, v0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->K:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->J:[B

    iget v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->D:I

    iget v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->E:I

    mul-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->K:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->o:I

    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->D:I

    iget v6, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->E:I

    iget-object v10, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->K:Ljava/nio/ByteBuffer;

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/16 v4, 0x1909

    const/4 v7, 0x0

    const/16 v8, 0x1909

    const/16 v9, 0x1401

    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->q:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v10, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->L:Ljava/nio/ByteBuffer;

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/16 v4, 0x1908

    const/16 v5, 0x100

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x1908

    const/16 v9, 0x1401

    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    :cond_8
    :goto_7
    monitor-exit v1

    return-void

    :goto_8
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onDestroy()V
    .locals 4

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->o:I

    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->o:I

    iget v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->q:I

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->q:I

    return-void
.end method

.method public final onInit()V
    .locals 10

    invoke-super {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->onInit()V

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "input_teeth_whiten_texture_coordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->s:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "teeth_whiten_texture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->p:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "teeth_whiten_table_texture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->r:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "center_x"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->u:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "center_y"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->v:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "teeth_whiten_width"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->w:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "teeth_whiten_height"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->x:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "background_image_width"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->y:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "background_image_height"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->z:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "teeth_whiten_intensity_ratio"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->A:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "grid_roi_start"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->B:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "grid_roi_end"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->C:I

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v1, v2

    const/16 v3, 0xde1

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2800

    const v4, 0x46180400    # 9729.0f

    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v5, 0x2801

    invoke-static {v3, v5, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v6, 0x2802

    const v7, 0x47012f00    # 33071.0f

    invoke-static {v3, v6, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v8, 0x2803

    invoke-static {v3, v8, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    aget v2, v1, v2

    iput v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->o:I

    const/4 v2, 0x1

    aget v9, v1, v2

    invoke-static {v3, v9}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v3, v5, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v3, v6, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v3, v8, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    aget v0, v1, v2

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->q:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->O:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    const v1, 0x3c23d70a    # 0.01f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->O:F

    :cond_0
    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->A:I

    iget v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter;->O:F

    invoke-virtual {p0, v0, v1}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->setFloat(IF)V

    return-void
.end method
