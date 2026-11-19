.class public final enum Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

.field public static final enum ACCEPT:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

.field public static final enum ACCEPTONETOONE:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

.field public static final enum CANCEL:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

.field public static final enum CREATE:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

.field public static final enum DELETE:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

.field public static final enum DENY:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

.field public static final enum DETAILS:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

.field public static final enum HOST:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

.field public static final enum INVITE:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

.field public static final enum JOIN:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

.field public static final enum LIST:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

.field public static final enum LOCK:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

.field public static final enum STOP:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

.field public static final enum UNKNOWN:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

.field public static final enum UPDATE:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;


# direct methods
.method private static synthetic $values()[Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;
    .locals 15

    sget-object v0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->UNKNOWN:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    sget-object v1, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->HOST:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    sget-object v2, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->JOIN:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    sget-object v3, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->ACCEPT:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    sget-object v4, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->ACCEPTONETOONE:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    sget-object v5, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->DENY:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    sget-object v6, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->CANCEL:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    sget-object v7, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->STOP:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    sget-object v8, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->INVITE:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    sget-object v9, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->LOCK:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    sget-object v10, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->LIST:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    sget-object v11, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->DETAILS:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    sget-object v12, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->CREATE:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    sget-object v13, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->UPDATE:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    sget-object v14, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->DELETE:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    filled-new-array/range {v0 .. v14}, [Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->UNKNOWN:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    new-instance v0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    const-string v1, "HOST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->HOST:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    new-instance v0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    const-string v1, "JOIN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->JOIN:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    new-instance v0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    const-string v1, "ACCEPT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->ACCEPT:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    new-instance v0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    const-string v1, "ACCEPTONETOONE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->ACCEPTONETOONE:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    new-instance v0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    const-string v1, "DENY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->DENY:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    new-instance v0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    const-string v1, "CANCEL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->CANCEL:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    new-instance v0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    const-string v1, "STOP"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->STOP:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    new-instance v0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    const-string v1, "INVITE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->INVITE:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    new-instance v0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    const-string v1, "LOCK"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->LOCK:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    new-instance v0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    const-string v1, "LIST"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->LIST:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    new-instance v0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    const-string v1, "DETAILS"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->DETAILS:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    new-instance v0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    const-string v1, "CREATE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->CREATE:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    new-instance v0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    const-string v1, "UPDATE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->UPDATE:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    new-instance v0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    const-string v1, "DELETE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->DELETE:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    invoke-static {}, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->$values()[Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->$VALUES:[Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;
    .locals 1

    const-class v0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    return-object p0
.end method

.method public static values()[Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->$VALUES:[Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    invoke-virtual {v0}, [Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    return-object v0
.end method
