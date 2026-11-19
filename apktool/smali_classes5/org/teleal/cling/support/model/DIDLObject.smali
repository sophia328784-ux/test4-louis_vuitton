.class public abstract Lorg/teleal/cling/support/model/DIDLObject;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/cling/support/model/DIDLObject$Class;,
        Lorg/teleal/cling/support/model/DIDLObject$Property;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Lorg/teleal/cling/support/model/WriteStatus;

.field public g:Lorg/teleal/cling/support/model/DIDLObject$Class;

.field public final h:Ljava/util/List;

.field public final i:Ljava/util/List;

.field public final j:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lorg/teleal/cling/support/model/DIDLObject;->e:Z

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/support/model/DIDLObject;->h:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/support/model/DIDLObject;->i:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/support/model/DIDLObject;->j:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/teleal/cling/support/model/WriteStatus;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/teleal/cling/support/model/DIDLObject;->e:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/support/model/DIDLObject;->h:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/support/model/DIDLObject;->i:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/teleal/cling/support/model/DIDLObject;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/teleal/cling/support/model/DIDLObject;->b:Ljava/lang/String;

    iput-object p3, p0, Lorg/teleal/cling/support/model/DIDLObject;->c:Ljava/lang/String;

    iput-object p4, p0, Lorg/teleal/cling/support/model/DIDLObject;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lorg/teleal/cling/support/model/DIDLObject;->e:Z

    iput-object p6, p0, Lorg/teleal/cling/support/model/DIDLObject;->f:Lorg/teleal/cling/support/model/WriteStatus;

    iput-object p7, p0, Lorg/teleal/cling/support/model/DIDLObject;->g:Lorg/teleal/cling/support/model/DIDLObject$Class;

    iput-object p8, p0, Lorg/teleal/cling/support/model/DIDLObject;->h:Ljava/util/List;

    iput-object p9, p0, Lorg/teleal/cling/support/model/DIDLObject;->i:Ljava/util/List;

    iput-object p10, p0, Lorg/teleal/cling/support/model/DIDLObject;->j:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/DIDLObject;)V
    .locals 11

    .line 46
    iget-object v1, p1, Lorg/teleal/cling/support/model/DIDLObject;->a:Ljava/lang/String;

    .line 47
    iget-object v2, p1, Lorg/teleal/cling/support/model/DIDLObject;->b:Ljava/lang/String;

    .line 48
    iget-object v3, p1, Lorg/teleal/cling/support/model/DIDLObject;->c:Ljava/lang/String;

    .line 49
    iget-object v4, p1, Lorg/teleal/cling/support/model/DIDLObject;->d:Ljava/lang/String;

    .line 50
    iget-boolean v5, p1, Lorg/teleal/cling/support/model/DIDLObject;->e:Z

    .line 51
    iget-object v6, p1, Lorg/teleal/cling/support/model/DIDLObject;->f:Lorg/teleal/cling/support/model/WriteStatus;

    .line 52
    iget-object v7, p1, Lorg/teleal/cling/support/model/DIDLObject;->g:Lorg/teleal/cling/support/model/DIDLObject$Class;

    .line 53
    iget-object v8, p1, Lorg/teleal/cling/support/model/DIDLObject;->h:Ljava/util/List;

    .line 54
    iget-object v9, p1, Lorg/teleal/cling/support/model/DIDLObject;->i:Ljava/util/List;

    .line 55
    iget-object v10, p1, Lorg/teleal/cling/support/model/DIDLObject;->j:Ljava/util/List;

    move-object v0, p0

    .line 56
    invoke-direct/range {v0 .. v10}, Lorg/teleal/cling/support/model/DIDLObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/teleal/cling/support/model/WriteStatus;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/teleal/cling/support/model/DIDLObject$Property;)V
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/support/model/DIDLObject;->i:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lorg/teleal/cling/support/model/DIDLObject$Property;)V
    .locals 3

    iget-object v0, p0, Lorg/teleal/cling/support/model/DIDLObject;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/support/model/DIDLObject$Property;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->a(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    return-void
.end method

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
    check-cast p1, Lorg/teleal/cling/support/model/DIDLObject;

    iget-object p0, p0, Lorg/teleal/cling/support/model/DIDLObject;->a:Ljava/lang/String;

    iget-object p1, p1, Lorg/teleal/cling/support/model/DIDLObject;->a:Ljava/lang/String;

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

    iget-object p0, p0, Lorg/teleal/cling/support/model/DIDLObject;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method
