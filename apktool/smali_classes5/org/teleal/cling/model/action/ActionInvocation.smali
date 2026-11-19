.class public Lorg/teleal/cling/model/action/ActionInvocation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lorg/teleal/cling/model/meta/Service;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lorg/teleal/cling/model/meta/Action;

.field public final b:Ljava/util/LinkedHashMap;

.field public final c:Ljava/util/LinkedHashMap;

.field public d:Lorg/teleal/cling/model/action/ActionException;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/action/ActionException;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/model/action/ActionInvocation;->b:Ljava/util/LinkedHashMap;

    .line 77
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lorg/teleal/cling/model/action/ActionInvocation;->a:Lorg/teleal/cling/model/meta/Action;

    .line 79
    iput-object v0, p0, Lorg/teleal/cling/model/action/ActionInvocation;->b:Ljava/util/LinkedHashMap;

    .line 80
    iput-object v0, p0, Lorg/teleal/cling/model/action/ActionInvocation;->c:Ljava/util/LinkedHashMap;

    .line 81
    iput-object p1, p0, Lorg/teleal/cling/model/action/ActionInvocation;->d:Lorg/teleal/cling/model/action/ActionException;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/Action;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/meta/Action<",
            "TS;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, v0, v0}, Lorg/teleal/cling/model/action/ActionInvocation;-><init>(Lorg/teleal/cling/model/meta/Action;[Lorg/teleal/cling/model/action/ActionArgumentValue;[Lorg/teleal/cling/model/action/ActionArgumentValue;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/Action;[Lorg/teleal/cling/model/action/ActionArgumentValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/meta/Action<",
            "TS;>;[",
            "Lorg/teleal/cling/model/action/ActionArgumentValue<",
            "TS;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, p2, v0}, Lorg/teleal/cling/model/action/ActionInvocation;-><init>(Lorg/teleal/cling/model/meta/Action;[Lorg/teleal/cling/model/action/ActionArgumentValue;[Lorg/teleal/cling/model/action/ActionArgumentValue;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/Action;[Lorg/teleal/cling/model/action/ActionArgumentValue;[Lorg/teleal/cling/model/action/ActionArgumentValue;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/meta/Action<",
            "TS;>;[",
            "Lorg/teleal/cling/model/action/ActionArgumentValue<",
            "TS;>;[",
            "Lorg/teleal/cling/model/action/ActionArgumentValue<",
            "TS;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/model/action/ActionInvocation;->b:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/model/action/ActionInvocation;->c:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/teleal/cling/model/action/ActionInvocation;->d:Lorg/teleal/cling/model/action/ActionException;

    if-eqz p1, :cond_4

    iput-object p1, p0, Lorg/teleal/cling/model/action/ActionInvocation;->a:Lorg/teleal/cling/model/meta/Action;

    const/4 p1, 0x0

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p2

    move v1, p1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    iget-object v3, p0, Lorg/teleal/cling/model/action/ActionInvocation;->b:Ljava/util/LinkedHashMap;

    iget-object v4, v2, Lorg/teleal/cling/model/action/ActionArgumentValue;->c:Lorg/teleal/cling/model/meta/ActionArgument;

    iget-object v4, v4, Lorg/teleal/cling/model/meta/ActionArgument;->a:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez p3, :cond_2

    goto :goto_3

    :cond_2
    array-length p2, p3

    :goto_2
    if-ge p1, p2, :cond_3

    aget-object v0, p3, p1

    iget-object v1, p0, Lorg/teleal/cling/model/action/ActionInvocation;->c:Ljava/util/LinkedHashMap;

    iget-object v2, v0, Lorg/teleal/cling/model/action/ActionArgumentValue;->c:Lorg/teleal/cling/model/meta/ActionArgument;

    iget-object v2, v2, Lorg/teleal/cling/model/meta/ActionArgument;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void

    :cond_4
    const-string p0, "Action can not be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lorg/teleal/cling/model/action/ActionArgumentValue;
    .locals 6

    iget-object v0, p0, Lorg/teleal/cling/model/action/ActionInvocation;->a:Lorg/teleal/cling/model/meta/Action;

    iget-object v0, v0, Lorg/teleal/cling/model/meta/Action;->d:[Lorg/teleal/cling/model/meta/ActionArgument;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    iget-object v5, v4, Lorg/teleal/cling/model/meta/ActionArgument;->a:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_1
    if-eqz v4, :cond_2

    iget-object p0, p0, Lorg/teleal/cling/model/action/ActionInvocation;->c:Ljava/util/LinkedHashMap;

    iget-object p1, v4, Lorg/teleal/cling/model/meta/ActionArgument;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    return-object p0

    :cond_2
    const-string p0, "Argument not found: "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v3
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 10

    new-instance v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    iget-object v1, p0, Lorg/teleal/cling/model/action/ActionInvocation;->a:Lorg/teleal/cling/model/meta/Action;

    iget-object v1, v1, Lorg/teleal/cling/model/meta/Action;->c:[Lorg/teleal/cling/model/meta/ActionArgument;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    iget-object v6, v5, Lorg/teleal/cling/model/meta/ActionArgument;->a:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    :cond_0
    iget-object v6, v5, Lorg/teleal/cling/model/meta/ActionArgument;->b:[Ljava/lang/String;

    array-length v7, v6

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_4

    invoke-direct {v0, v5, p1}, Lorg/teleal/cling/model/action/ActionArgumentValue;-><init>(Lorg/teleal/cling/model/meta/ActionArgument;Ljava/lang/Object;)V

    iget-object p1, v0, Lorg/teleal/cling/model/action/ActionArgumentValue;->c:Lorg/teleal/cling/model/meta/ActionArgument;

    iget-object p1, p1, Lorg/teleal/cling/model/meta/ActionArgument;->a:Ljava/lang/String;

    iget-object p0, p0, Lorg/teleal/cling/model/action/ActionInvocation;->b:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    const-string p0, "Argument not found: "

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
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

    iget-object p0, p0, Lorg/teleal/cling/model/action/ActionInvocation;->a:Lorg/teleal/cling/model/meta/Action;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
