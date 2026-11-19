.class public interface abstract Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008f\u0018\u00002\u00020\u0001\u00a8\u0006\u0002\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;",
        "",
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


# direct methods
.method public static synthetic c(Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Lrq;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lrq;-><init>(I)V

    invoke-interface {p0, p1, p2, v0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->j(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static synthetic e(Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lx4;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;
    .locals 14

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    new-instance v1, Liv;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Liv;-><init>(I)V

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object/from16 v5, p2

    :goto_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    new-instance v1, Lrq;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lrq;-><init>(I)V

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object/from16 v6, p3

    :goto_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    new-instance v1, Liv;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Liv;-><init>(I)V

    move-object v7, v1

    goto :goto_2

    :cond_2
    move-object/from16 v7, p4

    :goto_2
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3

    new-instance v1, Lrt;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lrt;-><init>(I)V

    move-object v8, v1

    goto :goto_3

    :cond_3
    move-object/from16 v8, p5

    :goto_3
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_4

    new-instance v1, Liv;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Liv;-><init>(I)V

    move-object v9, v1

    goto :goto_4

    :cond_4
    move-object/from16 v9, p6

    :goto_4
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_5

    new-instance v1, Lrq;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lrq;-><init>(I)V

    move-object v10, v1

    goto :goto_5

    :cond_5
    move-object/from16 v10, p7

    :goto_5
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_6

    new-instance v1, Liv;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Liv;-><init>(I)V

    move-object v11, v1

    goto :goto_6

    :cond_6
    move-object/from16 v11, p8

    :goto_6
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_7

    new-instance v0, Liv;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Liv;-><init>(I)V

    move-object v12, v0

    :goto_7
    move-object v3, p0

    move-object v4, p1

    move-object/from16 v13, p10

    goto :goto_8

    :cond_7
    move-object/from16 v12, p9

    goto :goto_7

    :goto_8
    invoke-interface/range {v3 .. v13}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->b(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract a()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract a0(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/phone/PhoneType;)V
.end method

.method public abstract b(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
.end method

.method public abstract d(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/util/List;)V
.end method

.method public abstract e0(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/phone/PhoneType;)V
.end method

.method public abstract f(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;Lrq;)V
.end method

.method public abstract g(Lre;)V
.end method

.method public abstract h(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)V
.end method

.method public abstract i()V
.end method

.method public abstract j(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
.end method
