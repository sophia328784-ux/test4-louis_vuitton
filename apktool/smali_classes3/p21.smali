.class public final synthetic Lp21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/perfectlib/TagType;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/TagType;Z)V
    .locals 0

    iput-object p1, p0, Lp21;->b:Lcom/perfectcorp/perfectlib/TagType;

    iput-boolean p2, p0, Lp21;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/util/List;

    sget-object v0, Lcom/perfectcorp/perfectlib/TagType;->LOOK:Lcom/perfectcorp/perfectlib/TagType;

    iget-object v1, p0, Lp21;->b:Lcom/perfectcorp/perfectlib/TagType;

    if-eq v1, v0, :cond_0

    iget-boolean p0, p0, Lp21;->c:Z

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/TagHandler;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public test(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/f;

    iget-wide v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/f;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lp21;->b:Lcom/perfectcorp/perfectlib/TagType;

    invoke-static {v0, p1}, Lcom/perfectcorp/perfectlib/TagHandler;->c(Lcom/perfectcorp/perfectlib/TagType;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    sget-object v1, Lcom/perfectcorp/perfectlib/TagType;->LOOK:Lcom/perfectcorp/perfectlib/TagType;

    if-eq v0, v1, :cond_0

    iget-boolean p0, p0, Lp21;->c:Z

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/TagHandler;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/AbstractCollection;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/util/AbstractCollection;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
