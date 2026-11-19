.class public final Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;
.super Lcom/sightcall/pratik/PushNotificationPayload;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u001f\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u00012\u00020\u0002BS\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\t\u0010\u0019\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0004H\u00c6\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003Jg\u0010\"\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00042\u0008\u0008\u0002\u0010\t\u001a\u00020\u00042\u0008\u0008\u0002\u0010\n\u001a\u00020\u00042\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0004H\u00c6\u0001J\u0006\u0010#\u001a\u00020$J\u0014\u0010%\u001a\u00020&2\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u00d6\u0083\u0004J\n\u0010)\u001a\u00020$H\u00d6\u0081\u0004J\n\u0010*\u001a\u00020\u0004H\u00d6\u0081\u0004J\u0016\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020$R\u0016\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010R\u0016\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0010R\u0016\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0010R\u0016\u0010\u0008\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0010R\u0016\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0010R\u0016\u0010\n\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0010R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0010R\u0018\u0010\u000c\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0010\u00a8\u00060"
    }
    d2 = {
        "Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;",
        "Lcom/sightcall/pratik/PushNotificationPayload;",
        "Landroid/os/Parcelable;",
        "type",
        "",
        "title",
        "body",
        "meetingId",
        "participantId",
        "denyUrl",
        "userAction",
        "participantDisplayName",
        "meetingTitle",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getType",
        "()Ljava/lang/String;",
        "getTitle",
        "getBody",
        "getMeetingId",
        "getParticipantId",
        "getDenyUrl",
        "getUserAction",
        "getParticipantDisplayName",
        "getMeetingTitle",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "describeContents",
        "",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
        "pratik_release"
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
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final body:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "body"
    .end annotation
.end field

.field private final denyUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "denyUrl"
    .end annotation
.end field

.field private final meetingId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "meetingId"
    .end annotation
.end field

.field private final meetingTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "meetingTitle"
    .end annotation
.end field

.field private final participantDisplayName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "participantDisplayName"
    .end annotation
.end field

.field private final participantId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "participantId"
    .end annotation
.end field

.field private final title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field private final type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field private final userAction:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userAction"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest$Creator;

    invoke-direct {v0}, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest$Creator;-><init>()V

    sput-object v0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Lpq0;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/sightcall/pratik/PushNotificationPayload;-><init>()V

    iput-object p1, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->type:Ljava/lang/String;

    iput-object p2, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->body:Ljava/lang/String;

    iput-object p4, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->meetingId:Ljava/lang/String;

    iput-object p5, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->participantId:Ljava/lang/String;

    iput-object p6, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->denyUrl:Ljava/lang/String;

    iput-object p7, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->userAction:Ljava/lang/String;

    iput-object p8, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->participantDisplayName:Ljava/lang/String;

    iput-object p9, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->meetingTitle:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;
    .locals 0

    and-int/lit8 p11, p10, 0x1

    if-eqz p11, :cond_0

    iget-object p1, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->type:Ljava/lang/String;

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    iget-object p2, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->title:Ljava/lang/String;

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    iget-object p3, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->body:Ljava/lang/String;

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    iget-object p4, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->meetingId:Ljava/lang/String;

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    iget-object p5, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->participantId:Ljava/lang/String;

    :cond_4
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_5

    iget-object p6, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->denyUrl:Ljava/lang/String;

    :cond_5
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_6

    iget-object p7, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->userAction:Ljava/lang/String;

    :cond_6
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_7

    iget-object p8, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->participantDisplayName:Ljava/lang/String;

    :cond_7
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_8

    iget-object p9, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->meetingTitle:Ljava/lang/String;

    :cond_8
    move-object p10, p8

    move-object p11, p9

    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p11}, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->body:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->meetingId:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->participantId:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->denyUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->userAction:Ljava/lang/String;

    return-object p0
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->participantDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method public final component9()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->meetingTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Lpq0;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;

    invoke-direct/range {p0 .. p9}, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;

    iget-object v1, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->body:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->body:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->meetingId:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->meetingId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->participantId:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->participantId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->denyUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->denyUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->userAction:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->userAction:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->participantDisplayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->participantDisplayName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->meetingTitle:Ljava/lang/String;

    iget-object p1, p1, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->meetingTitle:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getBody()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->body:Ljava/lang/String;

    return-object p0
.end method

.method public final getDenyUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->denyUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final getMeetingId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->meetingId:Ljava/lang/String;

    return-object p0
.end method

.method public final getMeetingTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->meetingTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final getParticipantDisplayName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->participantDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method public final getParticipantId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->participantId:Ljava/lang/String;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final getUserAction()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->userAction:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->title:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->body:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->meetingId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->participantId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->denyUrl:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->userAction:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->participantDisplayName:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->meetingTitle:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    iget-object v0, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->type:Ljava/lang/String;

    iget-object v1, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->body:Ljava/lang/String;

    iget-object v3, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->meetingId:Ljava/lang/String;

    iget-object v4, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->participantId:Ljava/lang/String;

    iget-object v5, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->denyUrl:Ljava/lang/String;

    iget-object v6, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->userAction:Ljava/lang/String;

    iget-object v7, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->participantDisplayName:Ljava/lang/String;

    iget-object p0, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->meetingTitle:Ljava/lang/String;

    const-string v8, ", title="

    const-string v9, ", body="

    const-string v10, "PushNotificationPayloadMeetingRequest(type="

    invoke-static {v10, v0, v8, v1, v9}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", meetingId="

    const-string v8, ", participantId="

    invoke-static {v0, v2, v1, v3, v8}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", denyUrl="

    const-string v2, ", userAction="

    invoke-static {v0, v4, v1, v5, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", participantDisplayName="

    const-string v2, ", meetingTitle="

    invoke-static {v0, v6, v1, v7, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ")"

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->body:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->meetingId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->participantId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->denyUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->userAction:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->participantDisplayName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->meetingTitle:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
