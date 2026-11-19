.class public final Lnet/rtccloud/sdk/event/call/ProgressivexEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static SOURCE_JPEG:I = 0x1

.field public static SOURCE_PROGRESSIVEX:I


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final pid:I

.field private final source:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/rtccloud/sdk/event/call/ProgressivexEvent;->bitmap:Landroid/graphics/Bitmap;

    iput p2, p0, Lnet/rtccloud/sdk/event/call/ProgressivexEvent;->source:I

    iput p3, p0, Lnet/rtccloud/sdk/event/call/ProgressivexEvent;->pid:I

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/event/call/ProgressivexEvent;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getPid()I
    .locals 0

    iget p0, p0, Lnet/rtccloud/sdk/event/call/ProgressivexEvent;->pid:I

    return p0
.end method

.method public getSource()I
    .locals 0

    iget p0, p0, Lnet/rtccloud/sdk/event/call/ProgressivexEvent;->source:I

    return p0
.end method
