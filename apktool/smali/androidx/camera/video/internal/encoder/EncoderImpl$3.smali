.class Landroidx/camera/video/internal/encoder/EncoderImpl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/video/internal/encoder/TimeProvider;


# instance fields
.field public final synthetic a:Lfw;

.field public final synthetic b:Landroidx/camera/video/internal/encoder/SystemTimeProvider;


# direct methods
.method public constructor <init>(Lfw;Landroidx/camera/video/internal/encoder/SystemTimeProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$3;->a:Lfw;

    iput-object p2, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$3;->b:Landroidx/camera/video/internal/encoder/SystemTimeProvider;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$3;->b:Landroidx/camera/video/internal/encoder/SystemTimeProvider;

    invoke-virtual {v0}, Landroidx/camera/video/internal/encoder/SystemTimeProvider;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object p0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$3;->a:Lfw;

    invoke-virtual {p0, v0}, Lfw;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()J
    .locals 2

    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$3;->b:Landroidx/camera/video/internal/encoder/SystemTimeProvider;

    invoke-virtual {v0}, Landroidx/camera/video/internal/encoder/SystemTimeProvider;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object p0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$3;->a:Lfw;

    invoke-virtual {p0, v0}, Lfw;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
