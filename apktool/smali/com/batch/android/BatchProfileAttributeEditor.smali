.class public Lcom/batch/android/BatchProfileAttributeEditor;
.super Lcom/batch/android/l1/b;
.source "SourceFile"


# static fields
.field private static final h:Ljava/lang/String; = "BatchProfileAttributeEditor"


# instance fields
.field private final g:Lcom/batch/android/c1/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/batch/android/l1/b;-><init>()V

    new-instance v0, Lcom/batch/android/c1/e;

    invoke-direct {v0}, Lcom/batch/android/c1/e;-><init>()V

    iput-object v0, p0, Lcom/batch/android/BatchProfileAttributeEditor;->g:Lcom/batch/android/c1/e;

    return-void
.end method


# virtual methods
.method public addToArray(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/BatchProfileAttributeEditor;
    .locals 5

    const-string v0, "BatchProfileAttributeEditor"

    const-string v1, "Strings in Array attributes can\'t be null or longer than 64 characters. Ignoring attribute \'"

    .line 72
    :try_start_0
    invoke-static {p1}, Lcom/batch/android/c1/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-static {p2}, Lcom/batch/android/c1/a;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :catch_0
    move-exception p2

    goto :goto_0

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/batch/android/BatchProfileAttributeEditor;->g:Lcom/batch/android/c1/e;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3}, Lcom/batch/android/c1/e;->a(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Lcom/batch/android/c1/a$b; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    invoke-super {p0, p1, p2}, Lcom/batch/android/l1/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/l1/b;

    return-object p0

    .line 77
    :goto_0
    invoke-virtual {p2, v0, p1}, Lcom/batch/android/c1/a$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public addToArray(Ljava/lang/String;Ljava/util/List;)Lcom/batch/android/BatchProfileAttributeEditor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/batch/android/BatchProfileAttributeEditor;"
        }
    .end annotation

    const-string v0, "BatchProfileAttributeEditor"

    const-string v1, "Array of string attributes must not be longer than 25 items, only values of type String and must respect the string attribute limitations. Ignoring attribute \'"

    :try_start_0
    invoke-static {p1}, Lcom/batch/android/c1/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/batch/android/c1/a;->a(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/batch/android/BatchProfileAttributeEditor;->g:Lcom/batch/android/c1/e;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3}, Lcom/batch/android/c1/e;->a(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Lcom/batch/android/c1/a$b; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-super {p0, p1, v0}, Lcom/batch/android/l1/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/l1/b;

    goto :goto_0

    :cond_1
    return-object p0

    :goto_1
    invoke-virtual {p2, v0, p1}, Lcom/batch/android/c1/a$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public removeAttribute(Ljava/lang/String;)Lcom/batch/android/BatchProfileAttributeEditor;
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/batch/android/c1/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/batch/android/BatchProfileAttributeEditor;->g:Lcom/batch/android/c1/e;

    invoke-virtual {v1, v0}, Lcom/batch/android/c1/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/batch/android/c1/a$b; {:try_start_0 .. :try_end_0} :catch_0

    invoke-super {p0, p1}, Lcom/batch/android/l1/b;->removeAttribute(Ljava/lang/String;)Lcom/batch/android/l1/b;

    invoke-super {p0, p1}, Lcom/batch/android/l1/b;->a(Ljava/lang/String;)Lcom/batch/android/l1/b;

    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "BatchProfileAttributeEditor"

    invoke-virtual {v0, v1, p1}, Lcom/batch/android/c1/a$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic removeAttribute(Ljava/lang/String;)Lcom/batch/android/l1/b;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/batch/android/BatchProfileAttributeEditor;->removeAttribute(Ljava/lang/String;)Lcom/batch/android/BatchProfileAttributeEditor;

    move-result-object p0

    return-object p0
.end method

.method public removeFromArray(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/BatchProfileAttributeEditor;
    .locals 5

    const-string v0, "BatchProfileAttributeEditor"

    const-string v1, "Strings in Array attributes can\'t be null or longer than 64 characters. Ignoring attribute \'"

    .line 72
    :try_start_0
    invoke-static {p1}, Lcom/batch/android/c1/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-static {p2}, Lcom/batch/android/c1/a;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :catch_0
    move-exception p2

    goto :goto_0

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/batch/android/BatchProfileAttributeEditor;->g:Lcom/batch/android/c1/e;

    new-instance v3, Ljava/util/ArrayList;

    .line 76
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 77
    invoke-virtual {v1, v2, v3}, Lcom/batch/android/c1/e;->b(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Lcom/batch/android/c1/a$b; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    invoke-super {p0, p1, p2}, Lcom/batch/android/l1/b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/l1/b;

    return-object p0

    .line 79
    :goto_0
    invoke-virtual {p2, v0, p1}, Lcom/batch/android/c1/a$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public removeFromArray(Ljava/lang/String;Ljava/util/List;)Lcom/batch/android/BatchProfileAttributeEditor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/batch/android/BatchProfileAttributeEditor;"
        }
    .end annotation

    const-string v0, "BatchProfileAttributeEditor"

    const-string v1, "Array of string attributes must not be longer than 25 items, only values of type String and must respect the string attribute limitations. Ignoring attribute \'"

    :try_start_0
    invoke-static {p1}, Lcom/batch/android/c1/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/batch/android/c1/a;->a(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/batch/android/BatchProfileAttributeEditor;->g:Lcom/batch/android/c1/e;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3}, Lcom/batch/android/c1/e;->b(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Lcom/batch/android/c1/a$b; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-super {p0, p1, v0}, Lcom/batch/android/l1/b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/l1/b;

    goto :goto_0

    :cond_1
    return-object p0

    :goto_1
    invoke-virtual {p2, v0, p1}, Lcom/batch/android/c1/a$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public save()V
    .locals 1

    invoke-super {p0}, Lcom/batch/android/l1/b;->save()V

    invoke-static {}, Lcom/batch/android/n/x;->a()Lcom/batch/android/v0/i;

    move-result-object v0

    iget-object p0, p0, Lcom/batch/android/BatchProfileAttributeEditor;->g:Lcom/batch/android/c1/e;

    invoke-virtual {v0, p0}, Lcom/batch/android/v0/i;->a(Lcom/batch/android/c1/e;)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;D)Lcom/batch/android/BatchProfileAttributeEditor;
    .locals 5

    .line 100
    :try_start_0
    invoke-static {p1}, Lcom/batch/android/c1/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/batch/android/BatchProfileAttributeEditor;->g:Lcom/batch/android/c1/e;

    new-instance v2, Lcom/batch/android/l1/d;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    sget-object v4, Lcom/batch/android/l1/a;->g:Lcom/batch/android/l1/a;

    invoke-direct {v2, v3, v4}, Lcom/batch/android/l1/d;-><init>(Ljava/lang/Object;Lcom/batch/android/l1/a;)V

    invoke-virtual {v1, v0, v2}, Lcom/batch/android/c1/e;->a(Ljava/lang/String;Lcom/batch/android/l1/d;)V
    :try_end_0
    .catch Lcom/batch/android/c1/a$b; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    invoke-super {p0, p1, p2, p3}, Lcom/batch/android/l1/b;->setAttribute(Ljava/lang/String;D)Lcom/batch/android/l1/b;

    return-object p0

    :catch_0
    move-exception p2

    .line 103
    const-string p3, "BatchProfileAttributeEditor"

    invoke-virtual {p2, p3, p1}, Lcom/batch/android/c1/a$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAttribute(Ljava/lang/String;J)Lcom/batch/android/BatchProfileAttributeEditor;
    .locals 5

    .line 96
    :try_start_0
    invoke-static {p1}, Lcom/batch/android/c1/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/batch/android/BatchProfileAttributeEditor;->g:Lcom/batch/android/c1/e;

    new-instance v2, Lcom/batch/android/l1/d;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/batch/android/l1/a;->f:Lcom/batch/android/l1/a;

    invoke-direct {v2, v3, v4}, Lcom/batch/android/l1/d;-><init>(Ljava/lang/Object;Lcom/batch/android/l1/a;)V

    invoke-virtual {v1, v0, v2}, Lcom/batch/android/c1/e;->a(Ljava/lang/String;Lcom/batch/android/l1/d;)V
    :try_end_0
    .catch Lcom/batch/android/c1/a$b; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    invoke-super {p0, p1, p2, p3}, Lcom/batch/android/l1/b;->setAttribute(Ljava/lang/String;J)Lcom/batch/android/l1/b;

    return-object p0

    :catch_0
    move-exception p2

    .line 99
    const-string p3, "BatchProfileAttributeEditor"

    invoke-virtual {p2, p3, p1}, Lcom/batch/android/c1/a$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/BatchProfileAttributeEditor;
    .locals 5

    const-string v0, "BatchProfileAttributeEditor"

    const-string v1, "String attributes can\'t be null or longer than 64 characters. Ignoring attribute \'"

    .line 113
    :try_start_0
    invoke-static {p2}, Lcom/batch/android/c1/a;->a(Ljava/lang/Object;)V

    .line 114
    invoke-static {p1}, Lcom/batch/android/c1/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-static {p2}, Lcom/batch/android/c1/a;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :catch_0
    move-exception p2

    goto :goto_0

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/batch/android/BatchProfileAttributeEditor;->g:Lcom/batch/android/c1/e;

    new-instance v3, Lcom/batch/android/l1/d;

    sget-object v4, Lcom/batch/android/l1/a;->e:Lcom/batch/android/l1/a;

    invoke-direct {v3, p2, v4}, Lcom/batch/android/l1/d;-><init>(Ljava/lang/Object;Lcom/batch/android/l1/a;)V

    invoke-virtual {v1, v2, v3}, Lcom/batch/android/c1/e;->a(Ljava/lang/String;Lcom/batch/android/l1/d;)V
    :try_end_0
    .catch Lcom/batch/android/c1/a$b; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    invoke-super {p0, p1, p2}, Lcom/batch/android/l1/b;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/l1/b;

    return-object p0

    .line 119
    :goto_0
    invoke-virtual {p2, v0, p1}, Lcom/batch/android/c1/a$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/net/URI;)Lcom/batch/android/BatchProfileAttributeEditor;
    .locals 6

    const-string v0, "BatchProfileAttributeEditor"

    const-string v1, "URL attributes must follow the format \'scheme://[authority][path][?query][#fragment]\'. Ignoring attribute \'"

    const-string v2, "URL attributes can\'t be null or longer than 2048 characters. Ignoring attribute \'"

    :try_start_0
    invoke-static {p2}, Lcom/batch/android/c1/a;->a(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/batch/android/c1/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Lcom/batch/android/c1/a;->b(Ljava/net/URI;)Z

    move-result v4
    :try_end_0
    .catch Lcom/batch/android/c1/a$b; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "\'"

    if-eqz v4, :cond_0

    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :catch_0
    move-exception p2

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/batch/android/c1/a;->a(Ljava/net/URI;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_1
    iget-object v1, p0, Lcom/batch/android/BatchProfileAttributeEditor;->g:Lcom/batch/android/c1/e;

    new-instance v2, Lcom/batch/android/l1/d;

    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/batch/android/l1/a;->j:Lcom/batch/android/l1/a;

    invoke-direct {v2, v4, v5}, Lcom/batch/android/l1/d;-><init>(Ljava/lang/Object;Lcom/batch/android/l1/a;)V

    invoke-virtual {v1, v3, v2}, Lcom/batch/android/c1/e;->a(Ljava/lang/String;Lcom/batch/android/l1/d;)V
    :try_end_1
    .catch Lcom/batch/android/c1/a$b; {:try_start_1 .. :try_end_1} :catch_0

    invoke-super {p0, p1, p2}, Lcom/batch/android/l1/b;->setAttribute(Ljava/lang/String;Ljava/net/URI;)Lcom/batch/android/l1/b;

    return-object p0

    :goto_0
    invoke-virtual {p2, v0, p1}, Lcom/batch/android/c1/a$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/util/Date;)Lcom/batch/android/BatchProfileAttributeEditor;
    .locals 4

    .line 108
    :try_start_0
    invoke-static {p2}, Lcom/batch/android/c1/a;->a(Ljava/lang/Object;)V

    .line 109
    invoke-static {p1}, Lcom/batch/android/c1/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/batch/android/BatchProfileAttributeEditor;->g:Lcom/batch/android/c1/e;

    new-instance v2, Lcom/batch/android/l1/d;

    sget-object v3, Lcom/batch/android/l1/a;->i:Lcom/batch/android/l1/a;

    invoke-direct {v2, p2, v3}, Lcom/batch/android/l1/d;-><init>(Ljava/lang/Object;Lcom/batch/android/l1/a;)V

    invoke-virtual {v1, v0, v2}, Lcom/batch/android/c1/e;->a(Ljava/lang/String;Lcom/batch/android/l1/d;)V
    :try_end_0
    .catch Lcom/batch/android/c1/a$b; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    invoke-super {p0, p1, p2}, Lcom/batch/android/l1/b;->setAttribute(Ljava/lang/String;Ljava/util/Date;)Lcom/batch/android/l1/b;

    return-object p0

    :catch_0
    move-exception p2

    .line 112
    const-string v0, "BatchProfileAttributeEditor"

    invoke-virtual {p2, v0, p1}, Lcom/batch/android/c1/a$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/util/List;)Lcom/batch/android/BatchProfileAttributeEditor;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/batch/android/BatchProfileAttributeEditor;"
        }
    .end annotation

    const-string v0, "BatchProfileAttributeEditor"

    const-string v1, "Array of string attributes must not be longer than 25 items, only values of type String and must respect the string attribute limitations. Ignoring attribute \'"

    .line 121
    :try_start_0
    invoke-static {p1}, Lcom/batch/android/c1/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-static {p2}, Lcom/batch/android/c1/a;->a(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :catch_0
    move-exception p2

    goto :goto_1

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/batch/android/BatchProfileAttributeEditor;->g:Lcom/batch/android/c1/e;

    new-instance v3, Lcom/batch/android/l1/d;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v5, Lcom/batch/android/l1/a;->l:Lcom/batch/android/l1/a;

    invoke-direct {v3, v4, v5}, Lcom/batch/android/l1/d;-><init>(Ljava/lang/Object;Lcom/batch/android/l1/a;)V

    invoke-virtual {v1, v2, v3}, Lcom/batch/android/c1/e;->a(Ljava/lang/String;Lcom/batch/android/l1/d;)V
    :try_end_0
    .catch Lcom/batch/android/c1/a$b; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    invoke-super {p0, p1}, Lcom/batch/android/l1/b;->a(Ljava/lang/String;)Lcom/batch/android/l1/b;

    .line 126
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 127
    invoke-super {p0, p1, v0}, Lcom/batch/android/l1/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/l1/b;

    goto :goto_0

    :cond_1
    return-object p0

    .line 128
    :goto_1
    invoke-virtual {p2, v0, p1}, Lcom/batch/android/c1/a$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAttribute(Ljava/lang/String;Z)Lcom/batch/android/BatchProfileAttributeEditor;
    .locals 5

    .line 104
    :try_start_0
    invoke-static {p1}, Lcom/batch/android/c1/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/batch/android/BatchProfileAttributeEditor;->g:Lcom/batch/android/c1/e;

    new-instance v2, Lcom/batch/android/l1/d;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sget-object v4, Lcom/batch/android/l1/a;->h:Lcom/batch/android/l1/a;

    invoke-direct {v2, v3, v4}, Lcom/batch/android/l1/d;-><init>(Ljava/lang/Object;Lcom/batch/android/l1/a;)V

    invoke-virtual {v1, v0, v2}, Lcom/batch/android/c1/e;->a(Ljava/lang/String;Lcom/batch/android/l1/d;)V
    :try_end_0
    .catch Lcom/batch/android/c1/a$b; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    invoke-super {p0, p1, p2}, Lcom/batch/android/l1/b;->setAttribute(Ljava/lang/String;Z)Lcom/batch/android/l1/b;

    return-object p0

    :catch_0
    move-exception p2

    .line 107
    const-string v0, "BatchProfileAttributeEditor"

    invoke-virtual {p2, v0, p1}, Lcom/batch/android/c1/a$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic setAttribute(Ljava/lang/String;D)Lcom/batch/android/l1/b;
    .locals 0

    .line 120
    invoke-virtual {p0, p1, p2, p3}, Lcom/batch/android/BatchProfileAttributeEditor;->setAttribute(Ljava/lang/String;D)Lcom/batch/android/BatchProfileAttributeEditor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setAttribute(Ljava/lang/String;J)Lcom/batch/android/l1/b;
    .locals 0

    .line 91
    invoke-virtual {p0, p1, p2, p3}, Lcom/batch/android/BatchProfileAttributeEditor;->setAttribute(Ljava/lang/String;J)Lcom/batch/android/BatchProfileAttributeEditor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/l1/b;
    .locals 0

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/batch/android/BatchProfileAttributeEditor;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/BatchProfileAttributeEditor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setAttribute(Ljava/lang/String;Ljava/net/URI;)Lcom/batch/android/l1/b;
    .locals 0

    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/batch/android/BatchProfileAttributeEditor;->setAttribute(Ljava/lang/String;Ljava/net/URI;)Lcom/batch/android/BatchProfileAttributeEditor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setAttribute(Ljava/lang/String;Ljava/util/Date;)Lcom/batch/android/l1/b;
    .locals 0

    .line 94
    invoke-virtual {p0, p1, p2}, Lcom/batch/android/BatchProfileAttributeEditor;->setAttribute(Ljava/lang/String;Ljava/util/Date;)Lcom/batch/android/BatchProfileAttributeEditor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setAttribute(Ljava/lang/String;Z)Lcom/batch/android/l1/b;
    .locals 0

    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/batch/android/BatchProfileAttributeEditor;->setAttribute(Ljava/lang/String;Z)Lcom/batch/android/BatchProfileAttributeEditor;

    move-result-object p0

    return-object p0
.end method

.method public setEmailAddress(Ljava/lang/String;)Lcom/batch/android/BatchProfileAttributeEditor;
    .locals 3

    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "BatchProfileAttributeEditor"

    if-nez v0, :cond_0

    const-string p1, "Batch does not have a context yet. Make sure Batch is started beforehand."

    invoke-static {v1, p1}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-static {}, Lcom/batch/android/n/f0;->a()Lcom/batch/android/v0/l;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/batch/android/v0/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "You cannot set/reset an email to an anonymous profile. Please use the `Batch.Profile.identify` method beforehand."

    invoke-static {v1, p1}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_1
    invoke-static {p1}, Lcom/batch/android/c1/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "setEmail called with invalid email format. Please ensure to respect the following regex: .@.\\..* and 128 char max length. "

    invoke-static {v1, p1}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/batch/android/BatchProfileAttributeEditor;->g:Lcom/batch/android/c1/e;

    invoke-virtual {v0, p1}, Lcom/batch/android/c1/e;->b(Ljava/lang/String;)V

    return-object p0
.end method

.method public setEmailMarketingSubscription(Lcom/batch/android/BatchEmailSubscriptionState;)Lcom/batch/android/BatchProfileAttributeEditor;
    .locals 1

    iget-object v0, p0, Lcom/batch/android/BatchProfileAttributeEditor;->g:Lcom/batch/android/c1/e;

    invoke-virtual {v0, p1}, Lcom/batch/android/c1/e;->a(Lcom/batch/android/BatchEmailSubscriptionState;)V

    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/batch/android/BatchProfileAttributeEditor;
    .locals 1

    invoke-static {p1}, Lcom/batch/android/c1/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "BatchProfileAttributeEditor"

    const-string v0, "setLanguage called with invalid language (must be at least 2 chars)"

    invoke-static {p1, v0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/batch/android/BatchProfileAttributeEditor;->g:Lcom/batch/android/c1/e;

    invoke-virtual {v0, p1}, Lcom/batch/android/c1/e;->c(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/batch/android/l1/b;->setLanguage(Ljava/lang/String;)Lcom/batch/android/l1/b;

    return-object p0
.end method

.method public bridge synthetic setLanguage(Ljava/lang/String;)Lcom/batch/android/l1/b;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/batch/android/BatchProfileAttributeEditor;->setLanguage(Ljava/lang/String;)Lcom/batch/android/BatchProfileAttributeEditor;

    move-result-object p0

    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/batch/android/BatchProfileAttributeEditor;
    .locals 3

    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "BatchProfileAttributeEditor"

    if-nez v0, :cond_0

    const-string p1, "Batch does not have a context yet. Make sure Batch is started beforehand."

    invoke-static {v1, p1}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-static {}, Lcom/batch/android/n/f0;->a()Lcom/batch/android/v0/l;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/batch/android/v0/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "You cannot set/reset a phone number to an anonymous profile. Please use the `Batch.Profile.identify` method beforehand."

    invoke-static {v1, p1}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_1
    invoke-static {p1}, Lcom/batch/android/c1/a;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "setPhoneNumber called with invalid phone number format. Please make sure that the string starts with a `+` and is no longer than 15 digits."

    invoke-static {v1, p1}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/batch/android/BatchProfileAttributeEditor;->g:Lcom/batch/android/c1/e;

    invoke-virtual {v0, p1}, Lcom/batch/android/c1/e;->d(Ljava/lang/String;)V

    return-object p0
.end method

.method public setRegion(Ljava/lang/String;)Lcom/batch/android/BatchProfileAttributeEditor;
    .locals 1

    invoke-static {p1}, Lcom/batch/android/c1/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "BatchProfileAttributeEditor"

    const-string v0, "setRegion called with invalid region (must be at least 2 chars)"

    invoke-static {p1, v0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/batch/android/BatchProfileAttributeEditor;->g:Lcom/batch/android/c1/e;

    invoke-virtual {v0, p1}, Lcom/batch/android/c1/e;->e(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/batch/android/l1/b;->setRegion(Ljava/lang/String;)Lcom/batch/android/l1/b;

    return-object p0
.end method

.method public bridge synthetic setRegion(Ljava/lang/String;)Lcom/batch/android/l1/b;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/batch/android/BatchProfileAttributeEditor;->setRegion(Ljava/lang/String;)Lcom/batch/android/BatchProfileAttributeEditor;

    move-result-object p0

    return-object p0
.end method

.method public setSMSMarketingSubscription(Lcom/batch/android/BatchSMSSubscriptionState;)Lcom/batch/android/BatchProfileAttributeEditor;
    .locals 1

    iget-object v0, p0, Lcom/batch/android/BatchProfileAttributeEditor;->g:Lcom/batch/android/c1/e;

    invoke-virtual {v0, p1}, Lcom/batch/android/c1/e;->a(Lcom/batch/android/BatchSMSSubscriptionState;)V

    return-object p0
.end method
