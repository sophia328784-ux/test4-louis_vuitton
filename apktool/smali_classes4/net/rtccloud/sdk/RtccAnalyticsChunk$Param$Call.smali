.class public final Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param$Call;
.super Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Call"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param$Call;",
        "Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param;",
        "<init>",
        "()V",
        "rtcc_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param$Call;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param$Call;

    invoke-direct {v0}, Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param$Call;-><init>()V

    sput-object v0, Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param$Call;->INSTANCE:Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param$Call;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
