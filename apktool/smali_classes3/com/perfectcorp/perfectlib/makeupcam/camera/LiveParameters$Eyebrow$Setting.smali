.class public final Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Setting"
.end annotation


# static fields
.field public static final n:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/jniproxy/VN_EyebrowMode;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:Z

.field public final l:Z

.field public final m:Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;

    sget-object v1, Lcom/perfectcorp/perfectlib/jniproxy/VN_EyebrowMode;->EYEBROW_ORIGINAL_MODE:Lcom/perfectcorp/perfectlib/jniproxy/VN_EyebrowMode;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v13}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;-><init>(Lcom/perfectcorp/perfectlib/jniproxy/VN_EyebrowMode;IIIIIIIIIZZLcom/perfectcorp/perfectlib/jniproxy/UIShimmer;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;->n:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/jniproxy/VN_EyebrowMode;IIIIIIIIIZZLcom/perfectcorp/perfectlib/jniproxy/UIShimmer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;->a:Lcom/perfectcorp/perfectlib/jniproxy/VN_EyebrowMode;

    iput p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;->b:I

    iput p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;->c:I

    iput p4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;->d:I

    iput p5, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;->e:I

    iput p6, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;->f:I

    iput p7, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;->g:I

    iput p8, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;->h:I

    iput p9, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;->i:I

    iput p10, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;->j:I

    iput-boolean p11, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;->k:Z

    iput-boolean p12, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;->l:Z

    iput-object p13, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;->m:Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;

    return-void
.end method
