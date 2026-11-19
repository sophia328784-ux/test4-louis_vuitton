.class final Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField$PhoneNumberContent$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.screen.certificates.components.CertificateFormField$PhoneNumberContent$1$1$1"
    f = "CertificateFormField.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final synthetic e:Landroidx/compose/runtime/MutableState;

.field public final synthetic f:Landroidx/compose/runtime/MutableState;

.field public final synthetic g:Landroidx/compose/runtime/MutableState;

.field public final synthetic h:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;Landroid/content/Context;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField$PhoneNumberContent$1$1$1;->b:Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField$PhoneNumberContent$1$1$1;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField$PhoneNumberContent$1$1$1;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField$PhoneNumberContent$1$1$1;->e:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField$PhoneNumberContent$1$1$1;->f:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField$PhoneNumberContent$1$1$1;->g:Landroidx/compose/runtime/MutableState;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField$PhoneNumberContent$1$1$1;->h:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9

    new-instance v0, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField$PhoneNumberContent$1$1$1;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField$PhoneNumberContent$1$1$1;->g:Landroidx/compose/runtime/MutableState;

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField$PhoneNumberContent$1$1$1;->h:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField$PhoneNumberContent$1$1$1;->b:Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField$PhoneNumberContent$1$1$1;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField$PhoneNumberContent$1$1$1;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField$PhoneNumberContent$1$1$1;->e:Landroidx/compose/runtime/MutableState;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField$PhoneNumberContent$1$1$1;->f:Landroidx/compose/runtime/MutableState;

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField$PhoneNumberContent$1$1$1;-><init>(Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;Landroid/content/Context;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField$PhoneNumberContent$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField$PhoneNumberContent$1$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField$PhoneNumberContent$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField$PhoneNumberContent$1$1$1;->b:Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;->j:Landroidx/compose/runtime/MutableState;

    sget-object v0, Lcom/vuitton/android/core/platform/serialization/JsonProviderKt;->a:Lkotlinx/serialization/json/Json;

    sget-object v1, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;->l:Lkotlin/text/Regex;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField$PhoneNumberContent$1$1$1;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f130033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/vuitton/android/core/extensions/SerializationExtKt;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/profile/Country;->Companion:Lcom/vuitton/foundation/model/domain/model/profile/Country$Companion;

    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/profile/Country$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    invoke-direct {v2, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    invoke-virtual {v0, v2, v1}, Lkotlinx/serialization/json/Json;->b(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/profile/Country;

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/profile/Country;->c:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField$getCountries$$inlined$sortedBy$1;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField$getCountries$$inlined$sortedBy$1;-><init>()V

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->o0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField$PhoneNumberContent$1$1$1;->e:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField$PhoneNumberContent$1$1$1;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->j:Ljava/lang/String;

    move-object v2, p1

    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/profile/Country;

    iget-object v4, v2, Lcom/vuitton/foundation/model/domain/model/profile/Country;->a:Ljava/lang/String;

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v5}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v2, Lcom/vuitton/foundation/model/domain/model/profile/Country;->c:Ljava/lang/String;

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v5}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_3
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/profile/Country;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_5
    move-object v0, v3

    :goto_1
    check-cast v0, Lcom/vuitton/foundation/model/domain/model/profile/Country;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField$PhoneNumberContent$1$1$1;->f:Landroidx/compose/runtime/MutableState;

    invoke-interface {p1, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/profile/Country;

    new-instance v4, Lcom/vuitton/android/presentation/compose/components/ListPickerItem;

    iget-object v5, v2, Lcom/vuitton/foundation/model/domain/model/profile/Country;->c:Ljava/lang/String;

    iget-object v6, v2, Lcom/vuitton/foundation/model/domain/model/profile/Country;->b:Ljava/lang/String;

    const-string v7, " "

    invoke-static {v5, v7, v6}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/profile/Country;->c:Ljava/lang/String;

    if-nez v2, :cond_6

    const-string v2, ""

    :cond_6
    move-object v7, v2

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/vuitton/android/presentation/compose/components/ListPickerItem;-><init>(Ljava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField$PhoneNumberContent$1$1$1;->g:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/compose/components/ListPickerItem;

    iget-object v2, v2, Lcom/vuitton/android/presentation/compose/components/ListPickerItem;->c:Ljava/lang/String;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/profile/Country;

    if-eqz v4, :cond_9

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/profile/Country;->c:Ljava/lang/String;

    goto :goto_3

    :cond_9
    move-object v4, v3

    :goto_3
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v3, v1

    :cond_a
    check-cast v3, Lcom/vuitton/android/presentation/compose/components/ListPickerItem;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField$PhoneNumberContent$1$1$1;->h:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0, v3}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_b
    const-string p0, "Collection contains no element matching the predicate."

    invoke-static {p0}, Lzy0;->c(Ljava/lang/String;)V

    return-object v3
.end method
