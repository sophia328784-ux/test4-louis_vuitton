.class public abstract Lcom/perfectcorp/perfectlib/ph/template/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/template/b$a;,
        Lcom/perfectcorp/perfectlib/ph/template/b$c;,
        Lcom/perfectcorp/perfectlib/ph/template/b$b;
    }
.end annotation


# direct methods
.method public static a(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->e(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0
.end method
