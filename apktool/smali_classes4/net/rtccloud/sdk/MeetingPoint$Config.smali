.class public Lnet/rtccloud/sdk/MeetingPoint$Config;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/MeetingPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/rtccloud/sdk/MeetingPoint$Config$Adhoc;,
        Lnet/rtccloud/sdk/MeetingPoint$Config$Permanent;,
        Lnet/rtccloud/sdk/MeetingPoint$Config$Scheduled;
    }
.end annotation


# instance fields
.field public final location:Ljava/lang/String;

.field public final title:Ljava/lang/String;

.field public final type:Lnet/rtccloud/sdk/MeetingPoint$Type;


# direct methods
.method private constructor <init>(Lnet/rtccloud/sdk/MeetingPoint$Type;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/rtccloud/sdk/MeetingPoint$Config;->type:Lnet/rtccloud/sdk/MeetingPoint$Type;

    iput-object p2, p0, Lnet/rtccloud/sdk/MeetingPoint$Config;->title:Ljava/lang/String;

    iput-object p3, p0, Lnet/rtccloud/sdk/MeetingPoint$Config;->location:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lnet/rtccloud/sdk/MeetingPoint$Type;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lnet/rtccloud/sdk/MeetingPoint$Config;-><init>(Lnet/rtccloud/sdk/MeetingPoint$Type;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static adhoc(Ljava/lang/String;Ljava/lang/String;)Lnet/rtccloud/sdk/MeetingPoint$Config$Adhoc;
    .locals 2

    new-instance v0, Lnet/rtccloud/sdk/MeetingPoint$Config$Adhoc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lnet/rtccloud/sdk/MeetingPoint$Config$Adhoc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static permanent(Ljava/lang/String;Ljava/lang/String;)Lnet/rtccloud/sdk/MeetingPoint$Config$Permanent;
    .locals 2

    new-instance v0, Lnet/rtccloud/sdk/MeetingPoint$Config$Permanent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lnet/rtccloud/sdk/MeetingPoint$Config$Permanent;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static scheduled(Ljava/lang/String;Ljava/lang/String;II)Lnet/rtccloud/sdk/MeetingPoint$Config$Scheduled;
    .locals 6

    new-instance v0, Lnet/rtccloud/sdk/MeetingPoint$Config$Scheduled;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lnet/rtccloud/sdk/MeetingPoint$Config$Scheduled;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    return-object v0
.end method
