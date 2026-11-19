.class public Lnet/rtccloud/sdk/User$SixDigits$Builder;
.super Lnet/rtccloud/sdk/User$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/User$SixDigits;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/rtccloud/sdk/User$Builder<",
        "Lnet/rtccloud/sdk/User$SixDigits;",
        "Lnet/rtccloud/sdk/User$SixDigits$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field protected final pin:Ljava/lang/String;

.field protected suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/User$Builder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lnet/rtccloud/sdk/User;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/rtccloud/sdk/User$SixDigits$Builder;->suffix:Ljava/lang/String;

    iput-object p2, p0, Lnet/rtccloud/sdk/User$SixDigits$Builder;->pin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final pin()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/User$SixDigits$Builder;->pin:Ljava/lang/String;

    return-object p0
.end method

.method public final suffix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/User$SixDigits$Builder;->suffix:Ljava/lang/String;

    return-object p0
.end method

.method public final suffix(Ljava/lang/String;)Lnet/rtccloud/sdk/User$SixDigits$Builder;
    .locals 0

    .line 3
    iput-object p1, p0, Lnet/rtccloud/sdk/User$SixDigits$Builder;->suffix:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Builder-SixDigits{appid=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/rtccloud/sdk/User$Builder;->appid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', pin=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/rtccloud/sdk/User$SixDigits$Builder;->pin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', suffix=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/rtccloud/sdk/User$SixDigits$Builder;->suffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', displayName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/rtccloud/sdk/User$Builder;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/rtccloud/sdk/User$Builder;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
