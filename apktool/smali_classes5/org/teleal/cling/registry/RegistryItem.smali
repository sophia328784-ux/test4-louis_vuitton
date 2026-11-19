.class Lorg/teleal/cling/registry/RegistryItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "I:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Lorg/teleal/cling/model/ExpirationDetails;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lorg/teleal/cling/model/ExpirationDetails;

    invoke-direct {v0}, Lorg/teleal/cling/model/ExpirationDetails;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/registry/RegistryItem;->c:Lorg/teleal/cling/model/ExpirationDetails;

    .line 24
    iput-object p1, p0, Lorg/teleal/cling/registry/RegistryItem;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/teleal/cling/model/ExpirationDetails;

    invoke-direct {v0}, Lorg/teleal/cling/model/ExpirationDetails;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/registry/RegistryItem;->c:Lorg/teleal/cling/model/ExpirationDetails;

    iput-object p1, p0, Lorg/teleal/cling/registry/RegistryItem;->a:Ljava/lang/Object;

    iput-object p2, p0, Lorg/teleal/cling/registry/RegistryItem;->b:Ljava/lang/Object;

    new-instance p1, Lorg/teleal/cling/model/ExpirationDetails;

    invoke-direct {p1, p3}, Lorg/teleal/cling/model/ExpirationDetails;-><init>(I)V

    iput-object p1, p0, Lorg/teleal/cling/registry/RegistryItem;->c:Lorg/teleal/cling/model/ExpirationDetails;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/teleal/cling/registry/RegistryItem;

    iget-object p0, p0, Lorg/teleal/cling/registry/RegistryItem;->a:Ljava/lang/Object;

    iget-object p1, p1, Lorg/teleal/cling/registry/RegistryItem;->a:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/registry/RegistryItem;->a:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/teleal/cling/registry/RegistryItem;->c:Lorg/teleal/cling/model/ExpirationDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " KEY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/teleal/cling/registry/RegistryItem;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ITEM: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/teleal/cling/registry/RegistryItem;->b:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
