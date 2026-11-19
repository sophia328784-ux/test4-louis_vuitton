.class public Lcom/google/android/filament/Texture$PixelBufferDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PixelBufferDescriptor"
.end annotation


# instance fields
.field public final a:Ljava/nio/Buffer;

.field public final b:Lcom/google/android/filament/Texture$Type;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:Lcom/google/android/filament/Texture$Format;

.field public final h:I

.field public final i:Lcom/google/android/filament/Texture$CompressedFormat;

.field public final j:Ljava/lang/Object;

.field public final k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/nio/Buffer;Lcom/google/android/filament/Texture$Format;Lcom/google/android/filament/Texture$Type;)V
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 26
    invoke-direct/range {v0 .. v9}, Lcom/google/android/filament/Texture$PixelBufferDescriptor;-><init>(Ljava/nio/Buffer;Lcom/google/android/filament/Texture$Format;Lcom/google/android/filament/Texture$Type;IIIILjava/lang/Object;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/Buffer;Lcom/google/android/filament/Texture$Format;Lcom/google/android/filament/Texture$Type;I)V
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 27
    invoke-direct/range {v0 .. v9}, Lcom/google/android/filament/Texture$PixelBufferDescriptor;-><init>(Ljava/nio/Buffer;Lcom/google/android/filament/Texture$Format;Lcom/google/android/filament/Texture$Type;IIIILjava/lang/Object;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/Buffer;Lcom/google/android/filament/Texture$Format;Lcom/google/android/filament/Texture$Type;III)V
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    .line 28
    invoke-direct/range {v0 .. v9}, Lcom/google/android/filament/Texture$PixelBufferDescriptor;-><init>(Ljava/nio/Buffer;Lcom/google/android/filament/Texture$Format;Lcom/google/android/filament/Texture$Type;IIIILjava/lang/Object;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/Buffer;Lcom/google/android/filament/Texture$Format;Lcom/google/android/filament/Texture$Type;IIIILjava/lang/Object;Ljava/lang/Runnable;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->a:Ljava/nio/Buffer;

    .line 31
    iput p5, p0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->d:I

    .line 32
    iput p6, p0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->e:I

    .line 33
    iput-object p3, p0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->b:Lcom/google/android/filament/Texture$Type;

    .line 34
    iput p4, p0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->c:I

    .line 35
    iput p7, p0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->f:I

    .line 36
    iput-object p2, p0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->g:Lcom/google/android/filament/Texture$Format;

    .line 37
    iput-object p8, p0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->j:Ljava/lang/Object;

    .line 38
    iput-object p9, p0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->k:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Lcom/google/android/filament/Texture$CompressedFormat;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->c:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->d:I

    iput v1, p0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->e:I

    iput v1, p0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->f:I

    iput-object p1, p0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->a:Ljava/nio/Buffer;

    sget-object p1, Lcom/google/android/filament/Texture$Type;->COMPRESSED:Lcom/google/android/filament/Texture$Type;

    iput-object p1, p0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->b:Lcom/google/android/filament/Texture$Type;

    iput v0, p0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->c:I

    iput-object p2, p0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->i:Lcom/google/android/filament/Texture$CompressedFormat;

    iput p3, p0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->h:I

    return-void
.end method
