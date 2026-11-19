.class public final synthetic Lcom/perfectcorp/perfectlib/makeupcam/camera/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c;

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$b;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c;->trigger:Ljava/lang/String;

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$b;->NONE:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$b;

    invoke-static {p0, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->d(Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$b;

    iput-object p0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$b;

    :goto_0
    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$b;->NONE:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$b;

    if-eq p0, v0, :cond_2

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$a;

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c;->react:Ljava/lang/String;

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$a;->NONE:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$a;

    invoke-static {p0, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->d(Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$a;

    iput-object p0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$a;

    :goto_1
    sget-object p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$a;->NONE:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$a;

    if-eq p0, p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
