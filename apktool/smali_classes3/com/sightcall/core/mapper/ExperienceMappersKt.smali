.class public final Lcom/sightcall/core/mapper/ExperienceMappersKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\u000c\u0010\u0003\u001a\u00020\u0004*\u00020\u0002H\u0000\u001a\u000c\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\u00020\u0002\u00a8\u0006\u0007"
    }
    d2 = {
        "toExperience",
        "Lcom/sightcall/core/experiences/Experience;",
        "Landroid/net/Uri;",
        "toVisualAssistance",
        "Lcom/sightcall/core/experiences/Experience$VisualAssistance;",
        "firstPath",
        "",
        "core_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final firstPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final toExperience(Landroid/net/Uri;)Lcom/sightcall/core/experiences/Experience;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/sightcall/core/mapper/ExperienceMappersKt;->firstPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "a"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sightcall/core/experiences/Experience$DigitalFlow;

    invoke-direct {v0, p0}, Lcom/sightcall/core/experiences/Experience$DigitalFlow;-><init>(Landroid/net/Uri;)V

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/sightcall/core/mapper/ExperienceMappersKt;->firstPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "feature"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sightcall/core/experiences/Experience$Feature;

    invoke-direct {v0, p0}, Lcom/sightcall/core/experiences/Experience$Feature;-><init>(Landroid/net/Uri;)V

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "debug"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/sightcall/core/experiences/Experience$DeveloperMod;

    invoke-direct {v0, p0}, Lcom/sightcall/core/experiences/Experience$DeveloperMod;-><init>(Landroid/net/Uri;)V

    return-object v0

    :cond_2
    invoke-static {p0}, Lcom/sightcall/core/mapper/ExperienceMappersKt;->firstPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "b"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p0}, Lcom/sightcall/core/mapper/ExperienceMappersKt;->firstPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "call"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p0}, Lcom/sightcall/core/mapper/ExperienceMappersKt;->firstPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_webrtc"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p0}, Lcom/sightcall/core/mapper/ExperienceMappersKt;->firstPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "noapp"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p0}, Lcom/sightcall/core/mapper/ExperienceMappersKt;->firstPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "noapp_webrtc"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p0}, Lcom/sightcall/core/mapper/ExperienceMappersKt;->firstPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "noapp_choice"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p0}, Lcom/sightcall/core/mapper/ExperienceMappersKt;->firstPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "register"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p0}, Lcom/sightcall/core/mapper/ExperienceMappersKt;->firstPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobile"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rtcc"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "login"

    if-eqz v0, :cond_4

    invoke-static {v0, v3, v1}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-ne v0, v2, :cond_4

    invoke-static {p0}, Lcom/sightcall/core/mapper/ExperienceMappersKt;->firstPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "sso"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/sightcall/core/experiences/Experience$VisualAssistance;

    invoke-direct {v0, p0}, Lcom/sightcall/core/experiences/Experience$VisualAssistance;-><init>(Landroid/net/Uri;)V

    return-object v0

    :cond_4
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0, v3, v1}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-ne v0, v2, :cond_5

    new-instance v0, Lcom/sightcall/core/experiences/Experience$Login;

    invoke-direct {v0, p0}, Lcom/sightcall/core/experiences/Experience$Login;-><init>(Landroid/net/Uri;)V

    return-object v0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    new-instance v0, Lcom/sightcall/core/experiences/SightCallUnknownUrlException;

    const-string v1, "unable to parse uri "

    invoke-static {p0, v1}, Lpq0;->l(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2, v1}, Lcom/sightcall/core/experiences/SightCallUnknownUrlException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    :cond_6
    :goto_0
    new-instance v0, Lcom/sightcall/core/experiences/Experience$VisualAssistance;

    invoke-direct {v0, p0}, Lcom/sightcall/core/experiences/Experience$VisualAssistance;-><init>(Landroid/net/Uri;)V

    return-object v0
.end method

.method public static final toVisualAssistance(Landroid/net/Uri;)Lcom/sightcall/core/experiences/Experience$VisualAssistance;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/sightcall/core/mapper/ExperienceMappersKt;->toExperience(Landroid/net/Uri;)Lcom/sightcall/core/experiences/Experience;

    move-result-object v0

    instance-of v1, v0, Lcom/sightcall/core/experiences/Experience$VisualAssistance;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sightcall/core/experiences/Experience$VisualAssistance;

    return-object v0

    :cond_0
    new-instance v0, Lcom/sightcall/core/experiences/SightCallUnknownUrlException;

    const-string v1, "unable to handle this uri with visual assistance "

    invoke-static {p0, v1}, Lpq0;->l(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1, v2}, Lcom/sightcall/core/experiences/SightCallUnknownUrlException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method
