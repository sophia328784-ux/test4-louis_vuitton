.class final enum Lcom/perfectcorp/perfectlib/TagType$11;
.super Lcom/perfectcorp/perfectlib/TagType;


# virtual methods
.method public final a()Z
    .locals 1

    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectLib;->d:Ljava/util/Set;

    sget-object v0, Lcom/perfectcorp/perfectlib/Functionality;->MAKEUP:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
