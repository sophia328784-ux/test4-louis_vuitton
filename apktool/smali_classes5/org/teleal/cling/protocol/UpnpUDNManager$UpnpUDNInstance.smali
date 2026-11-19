.class public Lorg/teleal/cling/protocol/UpnpUDNManager$UpnpUDNInstance;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/protocol/UpnpUDNManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpnpUDNInstance"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/teleal/cling/protocol/UpnpUDNManager$UpnpUDNInstance;->a:Ljava/lang/String;

    iput-object v0, p0, Lorg/teleal/cling/protocol/UpnpUDNManager$UpnpUDNInstance;->b:Ljava/lang/String;

    sget-object v1, Lorg/teleal/cling/model/types/UpnpDeviceType;->MediaRenderer:Lorg/teleal/cling/model/types/UpnpDeviceType;

    invoke-virtual {v1}, Lorg/teleal/cling/model/types/UpnpDeviceType;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/teleal/cling/protocol/UpnpUDNManager$UpnpUDNInstance;->c:Ljava/lang/String;

    iput-object v0, p0, Lorg/teleal/cling/protocol/UpnpUDNManager$UpnpUDNInstance;->d:Ljava/lang/String;

    iput-object v0, p0, Lorg/teleal/cling/protocol/UpnpUDNManager$UpnpUDNInstance;->e:Ljava/lang/String;

    iput-object p1, p0, Lorg/teleal/cling/protocol/UpnpUDNManager$UpnpUDNInstance;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/teleal/cling/protocol/UpnpUDNManager$UpnpUDNInstance;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UpnpUDNInstance{udn=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/teleal/cling/protocol/UpnpUDNManager$UpnpUDNInstance;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', descriptionUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/teleal/cling/protocol/UpnpUDNManager$UpnpUDNInstance;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mediaType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/teleal/cling/protocol/UpnpUDNManager$UpnpUDNInstance;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', security=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/teleal/cling/protocol/UpnpUDNManager$UpnpUDNInstance;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', bootid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/teleal/cling/protocol/UpnpUDNManager$UpnpUDNInstance;->e:Ljava/lang/String;

    const-string v1, "\'}"

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
