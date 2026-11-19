.class public final Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;
.super Lcom/cyberlink/clgpuimage/GPUImageFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;
    }
.end annotation


# static fields
.field public static final N:[F

.field public static final O:[C

.field public static final P:[C


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public final M:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

.field public final o:Ljava/lang/Object;

.field public p:I

.field public final q:Ljava/nio/FloatBuffer;

.field public final r:F

.field public final s:[F

.field public final t:[F

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->N:[F

    const/16 v0, 0x405

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->O:[C

    const/16 v0, 0x406

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->P:[C

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
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
        0xeds
        0xfes
        0xf6s
        0x89s
        0xf5s
        0xfas
        0x8ds
        0xfes
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
        0xb5s
        0x88s
        0xebs
        0x88s
        0x8ds
        0xfas
        0x8ds
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
        0xb3s
        0xfes
        0xffs
        0x8ds
        0xb9s
        0xf5s
        0x8es
        0x8cs
        0xf1s
        0xb5s
        0x88s
        0xebs
        0x88s
        0x8ds
        0xfas
        0x8ds
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
        0xebs
        0xf2s
        0xf0s
        0xf1s
        0x8ds
        0xb9s
        0xf5s
        0x8es
        0x8cs
        0xf1s
        0xb5s
        0x88s
        0xebs
        0x88s
        0x8ds
        0xfas
        0x8ds
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
        0xf5s
        0xfes
        0xffs
        0x8ds
        0xf8s
        0xfbs
        0xf5s
        0x8es
        0x8cs
        0xf1s
        0xf8s
        0x8bs
        0x88s
        0xf2s
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
        0x8bs
        0xf2s
        0xf0s
        0xf1s
        0x8ds
        0xf8s
        0xfbs
        0xf5s
        0x8es
        0x8cs
        0xf1s
        0xf8s
        0x8bs
        0x88s
        0xf2s
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
        0xf5s
        0xfes
        0xffs
        0x8ds
        0xf8s
        0xfbs
        0xf5s
        0x8es
        0x8cs
        0xf1s
        0xf8s
        0x8cs
        0x8ds
        0x8bs
        0xfes
        0x8ds
        0xfcs
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
        0x8fs
        0xfes
        0xfcs
        0xa9s
        0xe8s
        0x8bs
        0xf2s
        0xf0s
        0xf1s
        0x8ds
        0xf8s
        0xfbs
        0xf5s
        0x8es
        0x8cs
        0xf1s
        0xf8s
        0x8cs
        0x8ds
        0x8bs
        0xfes
        0x8ds
        0xfcs
        0xf1s
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
        0x8fs
        0xfes
        0xfcs
        0xa9s
        0xe8s
        0xbas
        0x88s
        0x8cs
        0xf8s
        0xecs
        0xf2s
        0xf7s
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
        0xf7s
        0xfes
        0xf0s
        0xecs
        0xf2s
        0xf7s
        0xf8s
        0xbas
        0x88s
        0x8cs
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
        0xebs
        0x88s
        0x8ds
        0xfas
        0x8ds
        0xfes
        0xbas
        0xfes
        0xf7s
        0x8ds
        0xfes
        0x8bs
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
        0xc2s
        0x8fs
        0xfes
        0xfcs
        0xa9s
        0xe8s
        0x8ds
        0xf6s
        0x89s
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
        0xf6s
        0x89s
        0xf5s
        0xfas
        0x8ds
        0xfes
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
        0xe8s
        0x94s
        0xe8s
        0xebs
        0x88s
        0x8ds
        0xfas
        0x8ds
        0xfes
        0xbas
        0xfes
        0xf7s
        0x8ds
        0xfes
        0x8bs
        0xa2s
        0xc2s
        0xb5s
        0x88s
        0xebs
        0x88s
        0x8ds
        0xfas
        0x8ds
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
        0xebs
        0x88s
        0x8ds
        0xfas
        0x8ds
        0xfes
        0xbas
        0xfes
        0xf7s
        0x8ds
        0xfes
        0x8bs
        0xe8s
        0x92s
        0xe8s
        0x8fs
        0xfes
        0xfcs
        0xa9s
        0x9fs
        0x8ds
        0xf6s
        0x89s
        0x95s
        0x81s
        0x93s
        0xe8s
        0x8ds
        0xf6s
        0x89s
        0x95s
        0x81s
        0x90s
        0x91s
        0xbas
        0x88s
        0x8cs
        0xf8s
        0xecs
        0xf2s
        0xf7s
        0xe8s
        0x92s
        0xe8s
        0x8fs
        0xfes
        0xfcs
        0xa9s
        0x9fs
        0x8ds
        0xf6s
        0x89s
        0x95s
        0x82s
        0x93s
        0xe8s
        0x8ds
        0xf6s
        0x89s
        0x95s
        0x82s
        0x90s
        0x91s
        0xf7s
        0xfes
        0xf0s
        0xecs
        0xf2s
        0xf7s
        0xf8s
        0xbas
        0x88s
        0x8cs
        0xa2s
        0xc2s
        0xb3s
        0xfes
        0xffs
        0x8ds
        0xb9s
        0xf5s
        0x8es
        0x8cs
        0xf1s
        0xb5s
        0x88s
        0xebs
        0x88s
        0x8ds
        0xfas
        0x8ds
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
        0x9fs
        0xb5s
        0x88s
        0xebs
        0x88s
        0x8ds
        0xfas
        0x8ds
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
        0x94s
        0xe8s
        0xf5s
        0xfes
        0xffs
        0x8ds
        0xf8s
        0xfbs
        0xf5s
        0x8es
        0x8cs
        0xf1s
        0xf8s
        0x8bs
        0x88s
        0xf2s
        0x90s
        0x91s
        0xf5s
        0xfes
        0xffs
        0x8ds
        0xf8s
        0xfbs
        0xf5s
        0x8es
        0x8cs
        0xf1s
        0xf8s
        0x8cs
        0x8ds
        0x8bs
        0xfes
        0x8ds
        0xfcs
        0xf1s
        0xa2s
        0xc2s
        0xebs
        0xf2s
        0xf0s
        0xf1s
        0x8ds
        0xb9s
        0xf5s
        0x8es
        0x8cs
        0xf1s
        0xb5s
        0x88s
        0xebs
        0x88s
        0x8ds
        0xfas
        0x8ds
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
        0x9fs
        0xb5s
        0x88s
        0xebs
        0x88s
        0x8ds
        0xfas
        0x8ds
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
        0x94s
        0xe8s
        0x8bs
        0xf2s
        0xf0s
        0xf1s
        0x8ds
        0xf8s
        0xfbs
        0xf5s
        0x8es
        0x8cs
        0xf1s
        0xf8s
        0x8bs
        0x88s
        0xf2s
        0x90s
        0x91s
        0x8bs
        0xf2s
        0xf0s
        0xf1s
        0x8ds
        0xf8s
        0xfbs
        0xf5s
        0x8es
        0x8cs
        0xf1s
        0xf8s
        0x8cs
        0x8ds
        0x8bs
        0xfes
        0x8ds
        0xfcs
        0xf1s
        0xa2s
        0xc2s
        0xb3s
        0xfes
        0xffs
        0x8ds
        0xb9s
        0xf5s
        0x8es
        0x8cs
        0xf1s
        0xb5s
        0x88s
        0xebs
        0x88s
        0x8ds
        0xfas
        0x8ds
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
        0x82s
        0xe8s
        0xa4s
        0xe8s
        0xa8s
        0x95s
        0x97s
        0xe8s
        0x94s
        0xe8s
        0xb3s
        0xfes
        0xffs
        0x8ds
        0xb9s
        0xf5s
        0x8es
        0x8cs
        0xf1s
        0xb5s
        0x88s
        0xebs
        0x88s
        0x8ds
        0xfas
        0x8ds
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
        0x82s
        0xa2s
        0xc2s
        0xebs
        0xf2s
        0xf0s
        0xf1s
        0x8ds
        0xb9s
        0xf5s
        0x8es
        0x8cs
        0xf1s
        0xb5s
        0x88s
        0xebs
        0x88s
        0x8ds
        0xfas
        0x8ds
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
        0x82s
        0xe8s
        0xa4s
        0xe8s
        0xa8s
        0x95s
        0x97s
        0xe8s
        0x94s
        0xe8s
        0xebs
        0xf2s
        0xf0s
        0xf1s
        0x8ds
        0xb9s
        0xf5s
        0x8es
        0x8cs
        0xf1s
        0xb5s
        0x88s
        0xebs
        0x88s
        0x8ds
        0xfas
        0x8ds
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
        0x82s
        0xa2s
        0xc2s
        0x86s
        0xc2s
    .end array-data

    nop

    :array_2
    .array-data 2
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
        0xf5s
        0xfes
        0xffs
        0x8ds
        0xf8s
        0xfbs
        0xf5s
        0x8es
        0x8cs
        0xf1s
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
        0x8bs
        0xf2s
        0xf0s
        0xf1s
        0x8ds
        0xf8s
        0xfbs
        0xf5s
        0x8es
        0x8cs
        0xf1s
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
        0xb5s
        0x88s
        0xebs
        0x88s
        0x8ds
        0xfas
        0x8ds
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
        0xb3s
        0xfes
        0xffs
        0x8ds
        0xb9s
        0xf5s
        0x8es
        0x8cs
        0xf1s
        0xb5s
        0x88s
        0xebs
        0x88s
        0x8ds
        0xfas
        0x8ds
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
        0xebs
        0xf2s
        0xf0s
        0xf1s
        0x8ds
        0xb9s
        0xf5s
        0x8es
        0x8cs
        0xf1s
        0xb5s
        0x88s
        0xebs
        0x88s
        0x8ds
        0xfas
        0x8ds
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
        0xf5s
        0x8es
        0x8cs
        0xf1s
        0xf8s
        0x8cs
        0x8ds
        0x8bs
        0xfes
        0xf7s
        0xf0s
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
        0x8fs
        0xfes
        0xfcs
        0xaas
        0xe8s
        0xfbs
        0xf5s
        0x8es
        0x8cs
        0xf1s
        0xf8s
        0xfcs
        0x88s
        0xf5s
        0x88s
        0x8bs
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
        0xb4s
        0xf2s
        0xfds
        0xf8s
        0xe1s
        0xf8s
        0x88s
        0xffs
        0xf8s
        0xf5s
        0xfes
        0xffs
        0x8ds
        0xf8s
        0x8bs
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
        0xffs
        0xf5s
        0x88s
        0xfas
        0x8ds
        0xe8s
        0xfas
        0xf5s
        0x89s
        0xf1s
        0xfas
        0xf8s
        0xf5s
        0xfes
        0xffs
        0x8ds
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
        0xf5s
        0xfes
        0xffs
        0x8ds
        0xf8s
        0xfbs
        0xf5s
        0x8es
        0x8cs
        0xf1s
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
        0xb3s
        0xfes
        0xffs
        0x8ds
        0xb9s
        0xf5s
        0x8es
        0x8cs
        0xf1s
        0xb5s
        0x88s
        0xebs
        0x88s
        0x8ds
        0xfas
        0x8ds
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
        0xfas
        0xa2s
        0xc2s
        0xffs
        0xf5s
        0x88s
        0xfas
        0x8ds
        0xe8s
        0xfas
        0xf5s
        0x89s
        0xf1s
        0xfas
        0xf8s
        0x8bs
        0xf2s
        0xf0s
        0xf1s
        0x8ds
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
        0x8bs
        0xf2s
        0xf0s
        0xf1s
        0x8ds
        0xf8s
        0xfbs
        0xf5s
        0x8es
        0x8cs
        0xf1s
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
        0xebs
        0xf2s
        0xf0s
        0xf1s
        0x8ds
        0xb9s
        0xf5s
        0x8es
        0x8cs
        0xf1s
        0xb5s
        0x88s
        0xebs
        0x88s
        0x8ds
        0xfas
        0x8ds
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
        0xfas
        0xa2s
        0xc2s
        0xffs
        0xf5s
        0x88s
        0xfas
        0x8ds
        0xe8s
        0xfas
        0xf5s
        0x89s
        0xf1s
        0xfas
        0xe8s
        0xa4s
        0xe8s
        0xfbs
        0xf5s
        0x8es
        0x8cs
        0xf1s
        0xf8s
        0x8cs
        0x8ds
        0x8bs
        0xfes
        0xf7s
        0xf0s
        0x8ds
        0xf1s
        0xe8s
        0x91s
        0xe8s
        0xf6s
        0xf2s
        0x81s
        0x9fs
        0xfas
        0xf5s
        0x89s
        0xf1s
        0xfas
        0xf8s
        0xf5s
        0xfes
        0xffs
        0x8ds
        0x93s
        0xe8s
        0xfas
        0xf5s
        0x89s
        0xf1s
        0xfas
        0xf8s
        0x8bs
        0xf2s
        0xf0s
        0xf1s
        0x8ds
        0x93s
        0xe8s
        0x8cs
        0x8ds
        0xfes
        0x89s
        0x9fs
        0xb4s
        0xf2s
        0xfds
        0xf8s
        0xe1s
        0xf8s
        0x88s
        0xffs
        0xf8s
        0xf5s
        0xfes
        0xffs
        0x8ds
        0xf8s
        0x8bs
        0xf2s
        0xf0s
        0xf1s
        0x8ds
        0x93s
        0xe8s
        0xb5s
        0x88s
        0xebs
        0x88s
        0x8ds
        0xfas
        0x8ds
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
        0x90s
        0x90s
        0xa2s
        0xc2s
        0x8fs
        0xfes
        0xfcs
        0xaas
        0xe8s
        0xfcs
        0x88s
        0xf5s
        0x88s
        0x8bs
        0xe8s
        0xa4s
        0xe8s
        0xf6s
        0xf2s
        0x81s
        0x9fs
        0x8cs
        0x88s
        0x8es
        0x8bs
        0xfcs
        0xfes
        0x93s
        0xe8s
        0xfbs
        0xf5s
        0x8es
        0x8cs
        0xf1s
        0xf8s
        0xfcs
        0x88s
        0xf5s
        0x88s
        0x8bs
        0x93s
        0xe8s
        0xfas
        0xf5s
        0x89s
        0xf1s
        0xfas
        0x90s
        0xa2s
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
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->O:[C

    invoke-static {v0}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->P:[C

    invoke-static {v1}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/cyberlink/clgpuimage/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->o:Ljava/lang/Object;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->r:F

    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->s:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->t:[F

    const/4 v0, -0x1

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->A:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->E:I

    const/16 v0, 0x5a

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->L:I

    new-instance v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

    invoke-direct {v0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->M:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lfc;->v(Ljava/nio/ByteBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->q:Ljava/nio/FloatBuffer;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static j(FFLandroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 6

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, p3, Landroid/graphics/PointF;->x:F

    invoke-static {v2, v1, p0, v1}, Ltr;->a(FFFF)F

    move-result v1

    iget v2, p3, Landroid/graphics/PointF;->y:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    sub-float v4, v2, v3

    neg-float v5, p1

    mul-float/2addr v4, v5

    add-float/2addr v4, v1

    iput v4, v0, Landroid/graphics/PointF;->x:F

    iget p3, p3, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->x:F

    invoke-static {p3, p2, p1, v3}, Ltr;->a(FFFF)F

    move-result p1

    invoke-static {v2, v3, p0, p1}, Ltr;->a(FFFF)F

    move-result p0

    iput p0, v0, Landroid/graphics/PointF;->y:F

    return-object v0
.end method

.method public static k(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 3

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x3f800000    # 1.0f

    iget p0, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, p0

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public final d()V
    .locals 14

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->q:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->q:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->N:[F

    iget v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->K:I

    iget v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->L:I

    add-int/lit16 v4, v3, 0x10e

    rem-int/lit16 v4, v4, 0x168

    const/16 v5, 0x8

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/4 v8, 0x2

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-ne v2, v4, :cond_0

    new-array v2, v5, [F

    aget v3, v1, v10

    aput v3, v2, v13

    aget v3, v1, v9

    aput v3, v2, v12

    aget v3, v1, v13

    aput v3, v2, v8

    aget v3, v1, v12

    aput v3, v2, v11

    aget v3, v1, v7

    aput v3, v2, v10

    aget v3, v1, v6

    aput v3, v2, v9

    aget v3, v1, v8

    aput v3, v2, v7

    aget v1, v1, v11

    aput v1, v2, v6

    goto :goto_0

    :cond_0
    add-int/lit16 v4, v3, 0xb4

    rem-int/lit16 v4, v4, 0x168

    if-ne v2, v4, :cond_1

    new-array v2, v5, [F

    aget v3, v1, v7

    aput v3, v2, v13

    aget v3, v1, v6

    aput v3, v2, v12

    aget v3, v1, v10

    aput v3, v2, v8

    aget v3, v1, v9

    aput v3, v2, v11

    aget v3, v1, v8

    aput v3, v2, v10

    aget v3, v1, v11

    aput v3, v2, v9

    aget v3, v1, v13

    aput v3, v2, v7

    aget v1, v1, v12

    aput v1, v2, v6

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x5a

    rem-int/lit16 v3, v3, 0x168

    if-ne v2, v3, :cond_2

    new-array v2, v5, [F

    aget v3, v1, v8

    aput v3, v2, v13

    aget v3, v1, v11

    aput v3, v2, v12

    aget v3, v1, v7

    aput v3, v2, v8

    aget v3, v1, v6

    aput v3, v2, v11

    aget v3, v1, v13

    aput v3, v2, v10

    aget v3, v1, v12

    aput v3, v2, v9

    aget v3, v1, v10

    aput v3, v2, v7

    aget v1, v1, v9

    aput v1, v2, v6

    goto :goto_0

    :cond_2
    new-array v2, v5, [F

    aget v3, v1, v13

    aput v3, v2, v13

    aget v3, v1, v12

    aput v3, v2, v12

    aget v3, v1, v8

    aput v3, v2, v8

    aget v3, v1, v11

    aput v3, v2, v11

    aget v3, v1, v10

    aput v3, v2, v10

    aget v3, v1, v9

    aput v3, v2, v9

    aget v3, v1, v7

    aput v3, v2, v7

    aget v1, v1, v6

    aput v1, v2, v6

    :goto_0
    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->q:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v13}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->p:I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->q:Ljava/nio/FloatBuffer;

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->p:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->u:I

    iget v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->r:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->o:Ljava/lang/Object;

    monitor-enter v1

    :goto_1
    if-ge v13, v11, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->t:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->M:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

    iget-object v3, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->min_rgb:[F

    aget v3, v3, v13

    iget-object v2, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->max_rgb:[F

    aget v2, v2, v13

    sub-float/2addr v2, v3

    iget-object v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->s:[F

    aget v4, v4, v13

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    aput v2, v0, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->v:I

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->t:[F

    invoke-static {v1}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-static {v0, v12, v1}, Landroid/opengl/GLES20;->glUniform3fv(IILjava/nio/FloatBuffer;)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->A:I

    const/16 v1, 0xde1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    const v0, 0x84c3

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->A:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->B:I

    invoke-static {v0, v11}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_4
    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->E:I

    if-eq v0, v2, :cond_5

    const v0, 0x84c4

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->E:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->F:I

    invoke-static {p0, v10}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_5
    return-void

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final l(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;)V
    .locals 6

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->M:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

    invoke-virtual {v1, p2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;)V

    iget p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->z:I

    new-instance v1, Landroid/graphics/PointF;

    iget v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_sin_val:F

    neg-float v2, v2

    iget v3, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_cos_val:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, p2, v1}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->i(ILandroid/graphics/PointF;)V

    iget p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->y:I

    new-instance v1, Landroid/graphics/PointF;

    iget v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_cos_val:F

    iget v3, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_sin_val:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, p2, v1}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->i(ILandroid/graphics/PointF;)V

    iget p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->x:I

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_center:Landroid/graphics/PointF;

    invoke-virtual {p0, p2, v1}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->i(ILandroid/graphics/PointF;)V

    iget p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->w:I

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_center:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, p2, v1}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->setFloat(IF)V

    iget p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->D:I

    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_left_blush_roi:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;

    iget v3, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->c:F

    iget v4, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->a:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    iget v5, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->d:F

    iget v2, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->b:F

    sub-float/2addr v5, v2

    div-float v2, v4, v5

    invoke-direct {v1, v3, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, p2, v1}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->i(ILandroid/graphics/PointF;)V

    iget p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->C:I

    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_left_blush_roi:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;

    iget v3, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->a:F

    iget v2, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->b:F

    invoke-direct {v1, v3, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, p2, v1}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->i(ILandroid/graphics/PointF;)V

    iget p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->H:I

    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_right_blush_roi:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;

    iget v3, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->c:F

    iget v5, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->a:F

    sub-float/2addr v3, v5

    div-float v3, v4, v3

    iget v5, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->d:F

    iget v2, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->b:F

    sub-float/2addr v5, v2

    div-float/2addr v4, v5

    invoke-direct {v1, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, p2, v1}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->i(ILandroid/graphics/PointF;)V

    iget p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->G:I

    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_right_blush_roi:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;

    iget v3, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->a:F

    iget v2, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->b:F

    invoke-direct {v1, v3, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, p2, v1}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->i(ILandroid/graphics/PointF;)V

    iget p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->I:I

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->m:[F

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p2, v3, v1, v2}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    iget p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->J:I

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->n:[F

    invoke-static {p2, v3, v1, v2}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    iget p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_rotation:I

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->K:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onDestroy()V
    .locals 0

    return-void
.end method

.method public final onInit()V
    .locals 2

    invoke-super {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->onInit()V

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "inputTemplateTextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->p:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "blush_strength"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->u:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "blush_color"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->v:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "Mid_X_of_left_right"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->w:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "RotateCenter"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->x:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "Cos_Sin"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->y:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "negSin_Cos"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->z:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "left_blush_texture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->B:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "left_blush_roi"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->C:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "left_blush_stretch"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->D:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "right_blush_texture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->F:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "right_blush_roi"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->G:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "right_blush_stretch"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->H:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "grid_roi_start"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->I:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "grid_roi_end"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->J:I

    return-void
.end method
