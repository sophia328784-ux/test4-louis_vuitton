.class public Lnet/rtccloud/sdk/User$SixDigits;
.super Lnet/rtccloud/sdk/User;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/User;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SixDigits"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/rtccloud/sdk/User$SixDigits$Builder;
    }
.end annotation


# instance fields
.field private final pin:Ljava/lang/String;

.field private final suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/rtccloud/sdk/User$Native;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/rtccloud/sdk/User;-><init>(Lnet/rtccloud/sdk/User$Native;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lnet/rtccloud/sdk/User$SixDigits;->pin:Ljava/lang/String;

    iput-object p5, p0, Lnet/rtccloud/sdk/User$SixDigits;->suffix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public pin()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/User$SixDigits;->pin:Ljava/lang/String;

    return-object p0
.end method

.method public suffix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/User$SixDigits;->suffix:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SixDigits{pin=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/rtccloud/sdk/User$SixDigits;->pin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', suffix=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/rtccloud/sdk/User$SixDigits;->suffix:Ljava/lang/String;

    const-string v1, "\'}"

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
