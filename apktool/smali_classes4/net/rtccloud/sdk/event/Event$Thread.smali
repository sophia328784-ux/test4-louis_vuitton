.class public final enum Lnet/rtccloud/sdk/event/Event$Thread;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/event/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Thread"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/rtccloud/sdk/event/Event$Thread;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/rtccloud/sdk/event/Event$Thread;

.field public static final enum BACKGROUND:Lnet/rtccloud/sdk/event/Event$Thread;

.field public static final enum MAIN:Lnet/rtccloud/sdk/event/Event$Thread;


# direct methods
.method private static synthetic $values()[Lnet/rtccloud/sdk/event/Event$Thread;
    .locals 2

    sget-object v0, Lnet/rtccloud/sdk/event/Event$Thread;->MAIN:Lnet/rtccloud/sdk/event/Event$Thread;

    sget-object v1, Lnet/rtccloud/sdk/event/Event$Thread;->BACKGROUND:Lnet/rtccloud/sdk/event/Event$Thread;

    filled-new-array {v0, v1}, [Lnet/rtccloud/sdk/event/Event$Thread;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/rtccloud/sdk/event/Event$Thread;

    const-string v1, "MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/event/Event$Thread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/event/Event$Thread;->MAIN:Lnet/rtccloud/sdk/event/Event$Thread;

    new-instance v0, Lnet/rtccloud/sdk/event/Event$Thread;

    const-string v1, "BACKGROUND"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/event/Event$Thread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/event/Event$Thread;->BACKGROUND:Lnet/rtccloud/sdk/event/Event$Thread;

    invoke-static {}, Lnet/rtccloud/sdk/event/Event$Thread;->$values()[Lnet/rtccloud/sdk/event/Event$Thread;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/event/Event$Thread;->$VALUES:[Lnet/rtccloud/sdk/event/Event$Thread;

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

.method public static valueOf(Ljava/lang/String;)Lnet/rtccloud/sdk/event/Event$Thread;
    .locals 1

    const-class v0, Lnet/rtccloud/sdk/event/Event$Thread;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/rtccloud/sdk/event/Event$Thread;

    return-object p0
.end method

.method public static values()[Lnet/rtccloud/sdk/event/Event$Thread;
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/event/Event$Thread;->$VALUES:[Lnet/rtccloud/sdk/event/Event$Thread;

    invoke-virtual {v0}, [Lnet/rtccloud/sdk/event/Event$Thread;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/rtccloud/sdk/event/Event$Thread;

    return-object v0
.end method
