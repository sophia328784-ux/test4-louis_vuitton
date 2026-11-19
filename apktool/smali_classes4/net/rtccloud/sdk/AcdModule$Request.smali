.class public Lnet/rtccloud/sdk/AcdModule$Request;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/AcdModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# instance fields
.field private cancelled:Z

.field private index:I

.field private length:I

.field private ready:Z

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lnet/rtccloud/sdk/AcdModule$Request;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/rtccloud/sdk/AcdModule$Request;->cancelled:Z

    return-void
.end method

.method public static bridge synthetic b(Lnet/rtccloud/sdk/AcdModule$Request;I)V
    .locals 0

    iput p1, p0, Lnet/rtccloud/sdk/AcdModule$Request;->index:I

    return-void
.end method

.method public static bridge synthetic c(Lnet/rtccloud/sdk/AcdModule$Request;I)V
    .locals 0

    iput p1, p0, Lnet/rtccloud/sdk/AcdModule$Request;->length:I

    return-void
.end method

.method public static bridge synthetic d(Lnet/rtccloud/sdk/AcdModule$Request;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/rtccloud/sdk/AcdModule$Request;->ready:Z

    return-void
.end method

.method public static bridge synthetic e(Lnet/rtccloud/sdk/AcdModule$Request;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/rtccloud/sdk/AcdModule$Request;->uid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public index()I
    .locals 0

    iget p0, p0, Lnet/rtccloud/sdk/AcdModule$Request;->index:I

    return p0
.end method

.method public isCancelled()Z
    .locals 0

    iget-boolean p0, p0, Lnet/rtccloud/sdk/AcdModule$Request;->cancelled:Z

    return p0
.end method

.method public isReady()Z
    .locals 0

    iget-boolean p0, p0, Lnet/rtccloud/sdk/AcdModule$Request;->ready:Z

    return p0
.end method

.method public length()I
    .locals 0

    iget p0, p0, Lnet/rtccloud/sdk/AcdModule$Request;->length:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request{index="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lnet/rtccloud/sdk/AcdModule$Request;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/rtccloud/sdk/AcdModule$Request;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cancelled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lnet/rtccloud/sdk/AcdModule$Request;->cancelled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ready="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lnet/rtccloud/sdk/AcdModule$Request;->ready:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", uid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/rtccloud/sdk/AcdModule$Request;->uid:Ljava/lang/String;

    const-string v1, "\'}"

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public uid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/AcdModule$Request;->uid:Ljava/lang/String;

    return-object p0
.end method
