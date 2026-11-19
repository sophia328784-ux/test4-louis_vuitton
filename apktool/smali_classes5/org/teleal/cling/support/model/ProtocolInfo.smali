.class public Lorg/teleal/cling/support/model/ProtocolInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lorg/teleal/cling/support/model/Protocol;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/types/InvalidValueException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/teleal/cling/support/model/Protocol;->ALL:Lorg/teleal/cling/support/model/Protocol;

    iput-object v0, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->a:Lorg/teleal/cling/support/model/Protocol;

    const-string v0, "*"

    iput-object v0, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->b:Ljava/lang/String;

    iput-object v0, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->c:Ljava/lang/String;

    iput-object v0, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 p1, 0x0

    aget-object p1, v0, p1

    invoke-static {p1}, Lorg/teleal/cling/support/model/Protocol;->a(Ljava/lang/String;)Lorg/teleal/cling/support/model/Protocol;

    move-result-object p1

    iput-object p1, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->a:Lorg/teleal/cling/support/model/Protocol;

    const/4 p1, 0x1

    aget-object p1, v0, p1

    iput-object p1, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->b:Ljava/lang/String;

    const/4 p1, 0x2

    aget-object p1, v0, p1

    iput-object p1, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->c:Ljava/lang/String;

    const/4 p1, 0x3

    aget-object p1, v0, p1

    iput-object p1, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->d:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Lorg/teleal/cling/model/types/InvalidValueException;

    const-string v0, "Can\'t parse ProtocolInfo string: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/teleal/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/Protocol;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->a:Lorg/teleal/cling/support/model/Protocol;

    .line 77
    iput-object p2, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->b:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->c:Ljava/lang/String;

    .line 79
    iput-object p4, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/common/util/MimeType;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string v0, "*"

    iput-object v0, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->b:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->c:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->d:Ljava/lang/String;

    .line 73
    sget-object v0, Lorg/teleal/cling/support/model/Protocol;->HTTP_GET:Lorg/teleal/cling/support/model/Protocol;

    iput-object v0, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->a:Lorg/teleal/cling/support/model/Protocol;

    .line 74
    invoke-virtual {p1}, Lorg/teleal/common/util/MimeType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/teleal/cling/support/model/ProtocolInfo;

    iget-object v2, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->d:Ljava/lang/String;

    iget-object v3, p1, Lorg/teleal/cling/support/model/ProtocolInfo;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->c:Ljava/lang/String;

    iget-object v3, p1, Lorg/teleal/cling/support/model/ProtocolInfo;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->b:Ljava/lang/String;

    iget-object v3, p1, Lorg/teleal/cling/support/model/ProtocolInfo;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object p0, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->a:Lorg/teleal/cling/support/model/Protocol;

    iget-object p1, p1, Lorg/teleal/cling/support/model/ProtocolInfo;->a:Lorg/teleal/cling/support/model/Protocol;

    if-eq p0, p1, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->a:Lorg/teleal/cling/support/model/Protocol;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->d:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->a:Lorg/teleal/cling/support/model/Protocol;

    invoke-virtual {v1}, Lorg/teleal/cling/support/model/Protocol;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
