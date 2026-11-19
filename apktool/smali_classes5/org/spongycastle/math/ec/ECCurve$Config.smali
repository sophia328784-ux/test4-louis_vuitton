.class public Lorg/spongycastle/math/ec/ECCurve$Config;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Config"
.end annotation


# instance fields
.field public final a:I

.field public b:Lorg/spongycastle/math/ec/endo/ECEndomorphism;

.field public final synthetic c:Lorg/spongycastle/math/ec/ECCurve;


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;ILorg/spongycastle/math/ec/endo/ECEndomorphism;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/math/ec/ECCurve$Config;->c:Lorg/spongycastle/math/ec/ECCurve;

    iput p2, p0, Lorg/spongycastle/math/ec/ECCurve$Config;->a:I

    iput-object p3, p0, Lorg/spongycastle/math/ec/ECCurve$Config;->b:Lorg/spongycastle/math/ec/endo/ECEndomorphism;

    return-void
.end method


# virtual methods
.method public final a()Lorg/spongycastle/math/ec/ECCurve;
    .locals 3

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$Config;->c:Lorg/spongycastle/math/ec/ECCurve;

    iget v1, p0, Lorg/spongycastle/math/ec/ECCurve$Config;->a:I

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECCurve;->k(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$Config;->c:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->a()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECCurve$Config;->c:Lorg/spongycastle/math/ec/ECCurve;

    if-eq v0, v2, :cond_0

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/spongycastle/math/ec/ECCurve$Config;->a:I

    iput v1, v0, Lorg/spongycastle/math/ec/ECCurve;->f:I

    iget-object p0, p0, Lorg/spongycastle/math/ec/ECCurve$Config;->b:Lorg/spongycastle/math/ec/endo/ECEndomorphism;

    iput-object p0, v0, Lorg/spongycastle/math/ec/ECCurve;->g:Lorg/spongycastle/math/ec/endo/ECEndomorphism;

    monitor-exit v0

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    const-string p0, "implementation returned current curve"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v1

    :cond_1
    const-string p0, "unsupported coordinate system"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v1
.end method
