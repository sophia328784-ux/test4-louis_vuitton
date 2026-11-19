.class Lnet/rtccloud/sdk/AcdModule$AcdWaiting;
.super Lnet/rtccloud/sdk/AcdModule$AcdUser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/AcdModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AcdWaiting"
.end annotation


# instance fields
.field mask:J

.field final synthetic this$0:Lnet/rtccloud/sdk/AcdModule;


# direct methods
.method public constructor <init>(Lnet/rtccloud/sdk/AcdModule;Ljava/lang/String;JJ)V
    .locals 0

    iput-object p1, p0, Lnet/rtccloud/sdk/AcdModule$AcdWaiting;->this$0:Lnet/rtccloud/sdk/AcdModule;

    invoke-direct {p0, p1, p2, p3, p4}, Lnet/rtccloud/sdk/AcdModule$AcdUser;-><init>(Lnet/rtccloud/sdk/AcdModule;Ljava/lang/String;J)V

    iput-wide p5, p0, Lnet/rtccloud/sdk/AcdModule$AcdWaiting;->mask:J

    return-void
.end method


# virtual methods
.method public jsonString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"uid\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/rtccloud/sdk/AcdModule$AcdUser;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"presence\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lnet/rtccloud/sdk/AcdModule$AcdUser;->presence:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"mask\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lnet/rtccloud/sdk/AcdModule$AcdWaiting;->mask:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
