.class public final Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;,
        Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0001\u0007B\u0015\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;",
        "",
        "",
        "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldGenericUiModel;",
        "fieldList",
        "<init>",
        "(Ljava/util/List;)V",
        "Companion",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldGenericUiModel;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/util/List;)Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static d(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->c(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->e:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel;

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldBooleanUiModel;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldBooleanUiModel;

    goto :goto_1

    :cond_1
    move-object p0, p1

    :goto_1
    if-eqz p0, :cond_2

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldBooleanUiModel;->a:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p1
.end method

.method public static f(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    return-object p0
.end method

.method public static g(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 2

    and-int/lit8 v0, p4, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p2, v1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_2

    const-string p2, ""

    :cond_2
    invoke-virtual {p0, p1, p3}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move-object p2, p0

    :goto_0
    invoke-static {p2}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    return-object v1

    :cond_4
    return-object p2
.end method


# virtual methods
.method public final b(Lkotlin/jvm/functions/Function1;)V
    .locals 2

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldGenericUiModel;

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;->g:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    if-eqz v1, :cond_2

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {}, Lv40;->g()V

    :cond_3
    return-void
.end method

.method public final c(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v1, Lgv;

    const/16 v2, 0x11

    invoke-direct {v1, p1, v0, v2}, Lgv;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->b(Lkotlin/jvm/functions/Function1;)V

    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    return-object p0
.end method

.method public final e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->c(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->i(Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a:Ljava/util/List;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final h()Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;
    .locals 3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final i()Z
    .locals 6

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldGenericUiModel;

    instance-of v3, v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    check-cast v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->g()Z

    move-result v1

    goto/16 :goto_4

    :cond_2
    instance-of v3, v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;

    if-eqz v3, :cond_a

    check-cast v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;->g:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    instance-of v3, v1, Ljava/util/Collection;

    if-eqz v3, :cond_3

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->g()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_5
    :goto_0
    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER2:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER3:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    filled-new-array {v1, v3, v5}, [Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    instance-of v3, v1, Ljava/util/Collection;

    if-eqz v3, :cond_6

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {p0, v3, v2}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v3, v2

    goto :goto_1

    :cond_8
    invoke-virtual {p0, v3}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->k(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Z

    move-result v3

    :goto_1
    if-nez v3, :cond_7

    :goto_2
    move v1, v4

    goto :goto_4

    :cond_9
    :goto_3
    move v1, v2

    :goto_4
    if-nez v1, :cond_1

    return v4

    :cond_a
    invoke-static {}, Lv40;->g()V

    return v4

    :cond_b
    :goto_5
    return v2
.end method

.method public final j()Z
    .locals 2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->h()Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;->h:Z

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public final k(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x2

    if-eq p1, v0, :cond_3

    if-eq p1, v2, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    :goto_0
    return v0

    :cond_1
    sget-object p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_COUNTRY3:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_COUNTRY2:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_COUNTRY1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    :goto_1
    const/4 v3, 0x0

    invoke-static {p0, p1, v3, v0, v2}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->g(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-static {p1}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->j()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {p1, v1}, Lcom/vuitton/android/presentation/helper/PhoneNumberHelper;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_5
    invoke-static {p1, v1}, Lcom/vuitton/android/presentation/helper/PhoneNumberHelper;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "FormUiModel(fieldList="

    const-string v1, ")"

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a:Ljava/util/List;

    invoke-static {v0, v1, p0}, Ld21;->o(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
