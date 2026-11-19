.class public abstract Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
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
.method public static final a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    iget v0, p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;->b:I

    iget-object p0, p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;->c:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$PluralResId;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    check-cast p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$PluralResId;

    iget v0, p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$PluralResId;->b:I

    iget v2, p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$PluralResId;->c:I

    iget-object p0, p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$PluralResId;->d:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v0, v2, p0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_1
    instance-of v0, p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResName;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    check-cast p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResName;

    iget-object v2, p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResName;->b:Ljava/lang/String;

    const-string v3, "string"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResName;->c:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResName;->d:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v0, p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;

    iget-object p0, p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;->b:Ljava/lang/String;

    return-object p0

    :cond_4
    instance-of v0, p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$WithoutTrailingAsterisk;

    const-string v2, ""

    if-eqz v0, :cond_8

    check-cast p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$WithoutTrailingAsterisk;

    iget-object p0, p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$WithoutTrailingAsterisk;->b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "*"

    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_7

    :goto_0
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lkotlin/text/CharsKt;->c(C)Z

    move-result v3

    if-nez v3, :cond_5

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    :cond_5
    if-gez v0, :cond_6

    goto :goto_1

    :cond_6
    move p1, v0

    goto :goto_0

    :cond_7
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    instance-of v0, p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ConcatStringResource;

    if-eqz v0, :cond_9

    check-cast p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ConcatStringResource;

    iget-object p0, p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ConcatStringResource;->b:Ljava/util/List;

    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v4, Lef;

    const/16 p0, 0x10

    invoke-direct {v4, p1, p0}, Lef;-><init>(Landroid/content/Context;I)V

    const/16 v5, 0x1e

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    sget-object p1, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Empty;->b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Empty;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    return-object v2

    :cond_a
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final b(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Empty;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;

    iget-object v0, v0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;->b:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResName;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResName;

    iget-object p0, p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResName;->b:Ljava/lang/String;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final c(Lcom/vuitton/foundation/model/domain/model/common/StringResource;)Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/common/StringResource$ResId;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/common/StringResource$ResId;

    new-instance v0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    iget v1, p0, Lcom/vuitton/foundation/model/domain/model/common/StringResource$ResId;->a:I

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/common/StringResource$ResId;->b:Ljava/util/List;

    invoke-direct {v0, v1, p0}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;)V

    return-object v0

    :cond_0
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/common/StringResource$PluralResId;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$PluralResId;

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/common/StringResource$PluralResId;

    iget v1, p0, Lcom/vuitton/foundation/model/domain/model/common/StringResource$PluralResId;->a:I

    iget v2, p0, Lcom/vuitton/foundation/model/domain/model/common/StringResource$PluralResId;->b:I

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/common/StringResource$PluralResId;->c:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$PluralResId;-><init>(IILjava/util/List;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/common/StringResource$ResName;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResName;

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/common/StringResource$ResName;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/StringResource$ResName;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/common/StringResource$ResName;->b:Ljava/util/List;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/common/StringResource$ResName;->c:Lcom/vuitton/foundation/model/domain/model/common/StringResource;

    invoke-static {p0}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->c(Lcom/vuitton/foundation/model/domain/model/common/StringResource;)Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResName;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V

    return-object v0

    :cond_2
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/common/StringResource$Text;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/common/StringResource$Text;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/common/StringResource$Text;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_3
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/common/StringResource$Empty;->a:Lcom/vuitton/foundation/model/domain/model/common/StringResource$Empty;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Empty;->b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Empty;

    return-object p0

    :cond_4
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/common/StringResource$ConcatStringResource;

    if-eqz v0, :cond_6

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/common/StringResource$ConcatStringResource;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/common/StringResource$ConcatStringResource;->a:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/common/StringResource;

    invoke-static {v1}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->c(Lcom/vuitton/foundation/model/domain/model/common/StringResource;)Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    new-instance p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ConcatStringResource;

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ConcatStringResource;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_6
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method
