.class public Lorg/teleal/cling/model/ContentItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lorg/teleal/cling/support/model/DIDLObject;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Boolean;

.field public final d:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lorg/teleal/cling/model/ContentItem;->d:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/container/Container;Lorg/teleal/cling/model/meta/Service;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p2, p0, Lorg/teleal/cling/model/ContentItem;->d:Ljava/lang/Boolean;

    iput-object p1, p0, Lorg/teleal/cling/model/ContentItem;->a:Lorg/teleal/cling/support/model/DIDLObject;

    iget-object p1, p1, Lorg/teleal/cling/support/model/DIDLObject;->a:Ljava/lang/String;

    iput-object p1, p0, Lorg/teleal/cling/model/ContentItem;->b:Ljava/lang/String;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lorg/teleal/cling/model/ContentItem;->c:Ljava/lang/Boolean;

    iput-object p3, p0, Lorg/teleal/cling/model/ContentItem;->d:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/item/Item;Lorg/teleal/cling/model/meta/Service;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p2, p0, Lorg/teleal/cling/model/ContentItem;->d:Ljava/lang/Boolean;

    .line 24
    iput-object p1, p0, Lorg/teleal/cling/model/ContentItem;->a:Lorg/teleal/cling/support/model/DIDLObject;

    .line 25
    iget-object p1, p1, Lorg/teleal/cling/support/model/DIDLObject;->a:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lorg/teleal/cling/model/ContentItem;->b:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lorg/teleal/cling/model/ContentItem;->c:Ljava/lang/Boolean;

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

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/teleal/cling/model/ContentItem;

    iget-object p0, p0, Lorg/teleal/cling/model/ContentItem;->b:Ljava/lang/String;

    iget-object p1, p1, Lorg/teleal/cling/model/ContentItem;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/model/ContentItem;->a:Lorg/teleal/cling/support/model/DIDLObject;

    iget-object p0, p0, Lorg/teleal/cling/support/model/DIDLObject;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/teleal/cling/model/ContentItem;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Super Level"

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/teleal/cling/model/ContentItem;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object p0, p0, Lorg/teleal/cling/model/ContentItem;->a:Lorg/teleal/cling/support/model/DIDLObject;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/teleal/cling/support/model/DIDLObject;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lorg/teleal/cling/support/model/DIDLObject;->c:Ljava/lang/String;

    return-object p0
.end method
