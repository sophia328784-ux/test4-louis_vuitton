.class public abstract Landroidx/media3/decoder/DecoderOutputBuffer;
.super Landroidx/media3/decoder/Buffer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/decoder/DecoderOutputBuffer$Owner;
    }
.end annotation


# instance fields
.field public c:J

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/decoder/Buffer;-><init>()V

    return-void
.end method


# virtual methods
.method public g()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/decoder/Buffer;->b:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/media3/decoder/DecoderOutputBuffer;->c:J

    iput-boolean v0, p0, Landroidx/media3/decoder/DecoderOutputBuffer;->d:Z

    return-void
.end method

.method public abstract h()V
.end method
