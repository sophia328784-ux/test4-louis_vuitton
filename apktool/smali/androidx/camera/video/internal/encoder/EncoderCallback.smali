.class public interface abstract Landroidx/camera/video/internal/encoder/EncoderCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/camera/video/internal/encoder/EncoderCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/video/internal/encoder/EncoderCallback$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/camera/video/internal/encoder/EncoderCallback;->a:Landroidx/camera/video/internal/encoder/EncoderCallback;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b(Landroidx/camera/video/internal/encoder/EncodedData;)V
.end method

.method public abstract c(Landroidx/camera/video/internal/encoder/f;)V
.end method

.method public abstract d(Landroidx/camera/video/internal/encoder/EncodeException;)V
.end method
