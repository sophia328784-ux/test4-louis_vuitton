.class Lnet/rtccloud/sdk/AcdModule$AcdUser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/AcdModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AcdUser"
.end annotation


# instance fields
.field presence:J

.field final synthetic this$0:Lnet/rtccloud/sdk/AcdModule;

.field uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/rtccloud/sdk/AcdModule;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lnet/rtccloud/sdk/AcdModule$AcdUser;->this$0:Lnet/rtccloud/sdk/AcdModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnet/rtccloud/sdk/AcdModule$AcdUser;->uid:Ljava/lang/String;

    iput-wide p3, p0, Lnet/rtccloud/sdk/AcdModule$AcdUser;->presence:J

    return-void
.end method


# virtual methods
.method public jsonString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"uid\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/rtccloud/sdk/AcdModule$AcdUser;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"presence\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lnet/rtccloud/sdk/AcdModule$AcdUser;->presence:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%X"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
