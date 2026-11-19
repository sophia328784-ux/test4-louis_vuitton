.class public final Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFactory$ScreenshareProducerLeech;
    }
.end annotation


# static fields
.field protected static final log:Lnet/rtccloud/sdk/util/OldLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/util/OldLogger$Internal;->SCREENSHARE_PRODUCER:Lnet/rtccloud/sdk/util/OldLogger$Internal;

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Lnet/rtccloud/sdk/util/OldLogger$Internal;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFactory;->log:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Landroid/view/View;)Lnet/rtccloud/sdk/ScreenshareProducer;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFactory$ScreenshareProducerLeech;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFactory$ScreenshareProducerLeech;-><init>(Landroid/view/View;I)V

    return-object v0

    :cond_0
    const-string p0, "[view] must not be null"

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p0

    throw p0
.end method
