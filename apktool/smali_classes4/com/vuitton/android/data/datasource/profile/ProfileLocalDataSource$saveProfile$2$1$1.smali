.class final Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$saveProfile$2$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/datastore/preferences/core/MutablePreferences;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "preferences",
        "Landroidx/datastore/preferences/core/MutablePreferences;"
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
    c = "com.vuitton.android.data.datasource.profile.ProfileLocalDataSource$saveProfile$2$1$1"
    f = "ProfileLocalDataSource.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;

.field public final synthetic d:Lcom/vuitton/foundation/model/domain/model/profile/Profile;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;Lcom/vuitton/foundation/model/domain/model/profile/Profile;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$saveProfile$2$1$1;->c:Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;

    iput-object p2, p0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$saveProfile$2$1$1;->d:Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$saveProfile$2$1$1;

    iget-object v1, p0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$saveProfile$2$1$1;->c:Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$saveProfile$2$1$1;->d:Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    invoke-direct {v0, v1, p0, p2}, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$saveProfile$2$1$1;-><init>(Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;Lcom/vuitton/foundation/model/domain/model/profile/Profile;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$saveProfile$2$1$1;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$saveProfile$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$saveProfile$2$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$saveProfile$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 64

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$saveProfile$2$1$1;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/datastore/preferences/core/MutablePreferences;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v2, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;->e:Landroidx/datastore/preferences/core/Preferences$Key;

    iget-object v3, v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$saveProfile$2$1$1;->c:Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;

    iget-object v3, v3, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;->b:Lkotlinx/serialization/json/Json;

    sget-object v4, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->Companion:Lcom/vuitton/android/data/database/entity/profile/ProfileEntity$Companion;

    invoke-virtual {v4}, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/SerializationStrategy;

    iget-object v0, v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$saveProfile$2$1$1;->d:Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->a:Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id;

    invoke-interface {v5}, Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id;->getId()Ljava/lang/String;

    move-result-object v7

    instance-of v6, v5, Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id$AtgId;

    if-eqz v6, :cond_0

    const-string v5, "atg"

    :goto_0
    move-object v8, v5

    goto :goto_1

    :cond_0
    instance-of v5, v5, Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id$SalesforceId;

    if-eqz v5, :cond_1

    const-string v5, "salesforce"

    goto :goto_0

    :cond_1
    const-string v5, ""

    goto :goto_0

    :goto_1
    iget-object v9, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->b:Ljava/lang/String;

    iget-object v10, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->c:Ljava/lang/String;

    iget-object v11, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->d:Ljava/lang/String;

    iget-object v12, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->e:Ljava/lang/String;

    iget-object v13, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->f:Ljava/lang/String;

    iget-object v14, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->g:Ljava/lang/String;

    iget-object v15, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->h:Ljava/lang/String;

    iget-object v5, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->j:Ljava/lang/String;

    iget-object v6, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->k:Ljava/lang/String;

    move-object/from16 v17, v5

    iget-object v5, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->n:Ljava/lang/String;

    const/16 v16, 0x0

    if-nez v5, :cond_2

    move-object/from16 v21, v16

    goto :goto_2

    :cond_2
    move-object/from16 v21, v5

    :goto_2
    iget-object v5, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->m:Ljava/lang/String;

    if-nez v5, :cond_3

    move-object/from16 v20, v16

    goto :goto_3

    :cond_3
    move-object/from16 v20, v5

    :goto_3
    iget-object v5, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->l:Ljava/lang/String;

    if-nez v5, :cond_4

    move-object/from16 v19, v16

    goto :goto_4

    :cond_4
    move-object/from16 v19, v5

    :goto_4
    iget-object v5, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->o:Ljava/lang/Boolean;

    move-object/from16 v22, v5

    iget-object v5, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->i:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Ljava/lang/Iterable;

    move-object/from16 v18, v6

    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 p0, v7

    const/16 v7, 0xa

    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/profile/Address;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v23, Lcom/vuitton/android/data/database/entity/address/AddressEntity;

    move-object/from16 p1, v5

    iget-object v5, v7, Lcom/vuitton/foundation/model/domain/model/profile/Address;->a:Ljava/lang/String;

    move-object/from16 v24, v5

    iget-boolean v5, v7, Lcom/vuitton/foundation/model/domain/model/profile/Address;->b:Z

    move/from16 v25, v5

    iget-object v5, v7, Lcom/vuitton/foundation/model/domain/model/profile/Address;->c:Ljava/lang/String;

    move-object/from16 v26, v5

    iget-object v5, v7, Lcom/vuitton/foundation/model/domain/model/profile/Address;->d:Ljava/lang/String;

    move-object/from16 v27, v5

    iget-object v5, v7, Lcom/vuitton/foundation/model/domain/model/profile/Address;->e:Ljava/lang/String;

    move-object/from16 v28, v5

    iget-object v5, v7, Lcom/vuitton/foundation/model/domain/model/profile/Address;->f:Ljava/lang/String;

    move-object/from16 v29, v5

    iget-object v5, v7, Lcom/vuitton/foundation/model/domain/model/profile/Address;->g:Ljava/lang/String;

    move-object/from16 v30, v5

    iget-object v5, v7, Lcom/vuitton/foundation/model/domain/model/profile/Address;->h:Ljava/lang/String;

    move-object/from16 v31, v5

    iget-object v5, v7, Lcom/vuitton/foundation/model/domain/model/profile/Address;->i:Ljava/lang/String;

    move-object/from16 v32, v5

    iget-object v5, v7, Lcom/vuitton/foundation/model/domain/model/profile/Address;->j:Ljava/lang/String;

    move-object/from16 v33, v5

    iget-object v5, v7, Lcom/vuitton/foundation/model/domain/model/profile/Address;->k:Ljava/lang/String;

    move-object/from16 v34, v5

    iget-object v5, v7, Lcom/vuitton/foundation/model/domain/model/profile/Address;->l:Ljava/lang/String;

    move-object/from16 v35, v5

    iget-object v5, v7, Lcom/vuitton/foundation/model/domain/model/profile/Address;->m:Ljava/lang/String;

    move-object/from16 v36, v5

    iget-object v5, v7, Lcom/vuitton/foundation/model/domain/model/profile/Address;->n:Ljava/lang/String;

    move-object/from16 v37, v5

    iget-object v5, v7, Lcom/vuitton/foundation/model/domain/model/profile/Address;->o:Ljava/lang/String;

    move-object/from16 v38, v5

    iget-object v5, v7, Lcom/vuitton/foundation/model/domain/model/profile/Address;->p:Ljava/lang/String;

    move-object/from16 v39, v5

    iget-object v5, v7, Lcom/vuitton/foundation/model/domain/model/profile/Address;->q:Ljava/lang/String;

    move-object/from16 v40, v5

    iget-object v5, v7, Lcom/vuitton/foundation/model/domain/model/profile/Address;->r:Ljava/lang/String;

    move-object/from16 v41, v5

    iget-object v5, v7, Lcom/vuitton/foundation/model/domain/model/profile/Address;->s:Ljava/lang/String;

    move-object/from16 v42, v5

    iget-object v5, v7, Lcom/vuitton/foundation/model/domain/model/profile/Address;->t:Ljava/lang/String;

    move-object/from16 v43, v5

    iget-object v5, v7, Lcom/vuitton/foundation/model/domain/model/profile/Address;->v:Ljava/lang/String;

    move-object/from16 v45, v5

    iget-object v5, v7, Lcom/vuitton/foundation/model/domain/model/profile/Address;->w:Ljava/lang/String;

    move-object/from16 v46, v5

    iget-object v5, v7, Lcom/vuitton/foundation/model/domain/model/profile/Address;->x:Ljava/lang/String;

    move-object/from16 v47, v5

    iget-object v5, v7, Lcom/vuitton/foundation/model/domain/model/profile/Address;->y:Ljava/lang/String;

    move-object/from16 v48, v5

    iget-object v5, v7, Lcom/vuitton/foundation/model/domain/model/profile/Address;->z:Ljava/lang/String;

    move-object/from16 v49, v5

    iget-object v5, v7, Lcom/vuitton/foundation/model/domain/model/profile/Address;->A:Ljava/lang/String;

    move-object/from16 v50, v5

    iget-object v5, v7, Lcom/vuitton/foundation/model/domain/model/profile/Address;->B:Ljava/lang/String;

    move-object/from16 v51, v5

    iget-object v5, v7, Lcom/vuitton/foundation/model/domain/model/profile/Address;->C:Ljava/lang/String;

    move-object/from16 v52, v5

    iget-object v5, v7, Lcom/vuitton/foundation/model/domain/model/profile/Address;->D:Ljava/lang/String;

    move-object/from16 v53, v5

    iget-object v5, v7, Lcom/vuitton/foundation/model/domain/model/profile/Address;->E:Ljava/lang/String;

    move-object/from16 v54, v5

    iget-object v5, v7, Lcom/vuitton/foundation/model/domain/model/profile/Address;->F:Ljava/lang/String;

    move-object/from16 v55, v5

    iget-object v5, v7, Lcom/vuitton/foundation/model/domain/model/profile/Address;->G:Ljava/lang/String;

    move-object/from16 v56, v5

    iget-object v5, v7, Lcom/vuitton/foundation/model/domain/model/profile/Address;->H:Ljava/lang/String;

    move-object/from16 v57, v5

    iget-object v5, v7, Lcom/vuitton/foundation/model/domain/model/profile/Address;->I:Ljava/lang/String;

    move-object/from16 v58, v5

    iget-object v5, v7, Lcom/vuitton/foundation/model/domain/model/profile/Address;->J:Ljava/lang/String;

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/profile/Address;->K:Ljava/lang/String;

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v44, 0x0

    const/high16 v61, 0x100000

    move-object/from16 v59, v5

    move-object/from16 v60, v7

    invoke-direct/range {v23 .. v63}, Lcom/vuitton/android/data/database/entity/address/AddressEntity;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v5, v23

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, p1

    goto/16 :goto_5

    :cond_5
    iget-object v5, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->q:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;

    if-eqz v5, :cond_9

    new-instance v7, Lcom/vuitton/android/data/database/entity/profile/PhoneNumberEntity;

    move-object/from16 p1, v6

    iget-object v6, v5, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;->a:Ljava/lang/String;

    move-object/from16 v23, v8

    iget-object v8, v5, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;->b:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;

    invoke-virtual {v8}, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->b()Ljava/lang/String;

    move-result-object v8

    sget-object v16, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->MOBILE:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;

    move-object/from16 v24, v9

    invoke-virtual/range {v16 .. v16}, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->b()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual/range {v16 .. v16}, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->b()Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    :cond_6
    sget-object v9, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->HOME:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;

    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v16}, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->b()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual/range {v16 .. v16}, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->b()Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    :cond_7
    sget-object v9, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->WORK:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;

    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v16}, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->b()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual/range {v16 .. v16}, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->b()Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    :cond_8
    sget-object v8, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->UNKNOWN:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;

    invoke-virtual {v8}, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->b()Ljava/lang/String;

    move-result-object v8

    :goto_6
    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;->c:Ljava/lang/String;

    invoke-direct {v7, v6, v8, v5}, Lcom/vuitton/android/data/database/entity/profile/PhoneNumberEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v7

    goto :goto_7

    :cond_9
    move-object/from16 p1, v6

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    :goto_7
    iget-object v5, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->r:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->s:Ljava/lang/String;

    new-instance v6, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;

    move-object/from16 v7, p0

    move-object/from16 v25, v0

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v24, v5

    move-object/from16 v23, v16

    move-object/from16 v16, p1

    invoke-direct/range {v6 .. v25}, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/vuitton/android/data/database/entity/profile/PhoneNumberEntity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v6}, Lkotlinx/serialization/json/Json;->c(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroidx/datastore/preferences/core/MutablePreferences;->e(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
