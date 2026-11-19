.class public Lorg/teleal/cling/model/message/UpnpResponse;
.super Lorg/teleal/cling/model/message/UpnpOperation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/cling/model/message/UpnpResponse$Status;
    }
.end annotation


# instance fields
.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lorg/teleal/cling/model/message/UpnpOperation;-><init>()V

    .line 17
    iput p1, p0, Lorg/teleal/cling/model/message/UpnpResponse;->b:I

    .line 18
    iput-object p2, p0, Lorg/teleal/cling/model/message/UpnpResponse;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V
    .locals 1

    invoke-direct {p0}, Lorg/teleal/cling/model/message/UpnpOperation;-><init>()V

    invoke-virtual {p1}, Lorg/teleal/cling/model/message/UpnpResponse$Status;->a()I

    move-result v0

    iput v0, p0, Lorg/teleal/cling/model/message/UpnpResponse;->b:I

    invoke-virtual {p1}, Lorg/teleal/cling/model/message/UpnpResponse$Status;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/teleal/cling/model/message/UpnpResponse;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/teleal/cling/model/message/UpnpResponse;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/teleal/cling/model/message/UpnpResponse;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b()Z
    .locals 1

    iget p0, p0, Lorg/teleal/cling/model/message/UpnpResponse;->b:I

    const/16 v0, 0x12c

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/teleal/cling/model/message/UpnpResponse;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
