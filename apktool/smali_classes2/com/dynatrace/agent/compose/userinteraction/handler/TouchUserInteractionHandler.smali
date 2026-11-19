.class public final Lcom/dynatrace/agent/compose/userinteraction/handler/TouchUserInteractionHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/agent/compose/userinteraction/handler/TouchUserInteractionHandler$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/dynatrace/agent/compose/userinteraction/handler/TouchUserInteractionHandler;",
        "",
        "<init>",
        "()V",
        "Companion",
        "com.dynatrace.agent_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic b:I


# instance fields
.field public final a:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/handler/TouchUserInteractionHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/handler/TouchUserInteractionHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/dynatrace/agent/compose/userinteraction/handler/TouchUserInteractionHandler;->a:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static a(Landroidx/compose/ui/layout/LayoutInfo;Z)Ljava/lang/String;
    .locals 13

    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutInfo;->z()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/layout/ModifierInfo;

    iget-object v2, v2, Landroidx/compose/ui/layout/ModifierInfo;->a:Landroidx/compose/ui/Modifier;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    iget-object v2, v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;->b:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v8, Lz21;

    const/16 v0, 0x1b

    invoke-direct {v8, v0}, Lz21;-><init>(I)V

    const/16 v9, 0x1e

    const-string v5, "->"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/utils/ItemByteCodeSuffixProcessor;

    invoke-direct {v1}, Lcom/dynatrace/agent/compose/userinteraction/utils/ItemByteCodeSuffixProcessor;-><init>()V

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/utils/ItemRepeatedWordsProcessor;

    invoke-direct {v2}, Lcom/dynatrace/agent/compose/userinteraction/utils/ItemRepeatedWordsProcessor;-><init>()V

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/utils/ItemUnderscoreWithLambdaProcessor;

    invoke-direct {v3}, Lcom/dynatrace/agent/compose/userinteraction/utils/ItemUnderscoreWithLambdaProcessor;-><init>()V

    new-instance v4, Lcom/dynatrace/agent/compose/userinteraction/utils/ItemLambdaProcessor;

    invoke-direct {v4}, Lcom/dynatrace/agent/compose/userinteraction/utils/ItemLambdaProcessor;-><init>()V

    const/4 v5, 0x4

    new-array v6, v5, [Lcom/dynatrace/agent/compose/userinteraction/utils/StringProcessor;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v1, 0x1

    aput-object v2, v6, v1

    const/4 v2, 0x2

    aput-object v3, v6, v2

    const/4 v2, 0x3

    aput-object v4, v6, v2

    move v2, v7

    :goto_3
    if-ge v2, v5, :cond_5

    aget-object v3, v6, v2

    invoke-interface {v3, v0}, Lcom/dynatrace/agent/compose/userinteraction/utils/StringProcessor;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    invoke-static {v0}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    move-object v0, v3

    :cond_6
    if-eqz v0, :cond_7

    if-eqz p1, :cond_8

    const-string p1, "->"

    invoke-static {v0, p1}, Lkotlin/text/StringsKt;->U(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_7
    move-object v0, v3

    :cond_8
    :goto_4
    if-nez v0, :cond_26

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "createMeasurePolicy"

    invoke-static {p1, v0, v7}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_1f

    new-instance v0, Lkotlin/text/Regex;

    const-string v2, "\\$(\\w+)MeasurePolicy\\$"

    invoke-direct {v0, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lkotlin/text/Regex;->b(Ljava/lang/CharSequence;)Lkotlin/text/MatchResult;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lkotlin/text/MatchResult;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_5

    :cond_9
    move-object v0, v3

    :goto_5
    const-string v2, "BOX"

    const-string v4, "ROW"

    const-string v5, "COLUMN"

    const v6, 0x76d1c756

    const v8, 0x13dba

    const v9, 0x101ab

    const-string v10, "Vertical"

    const-string v11, "Horizontal"

    if-eqz v0, :cond_d

    invoke-static {v0}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_a

    goto :goto_7

    :cond_a
    const-string v12, "rowColumn"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    new-instance v0, Lkotlin/text/Regex;

    const-string v7, "orientation\\s*=\\s*(\\w+)"

    invoke-direct {v0, v7}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lkotlin/text/Regex;->b(Ljava/lang/CharSequence;)Lkotlin/text/MatchResult;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lkotlin/text/MatchResult;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_6

    :cond_b
    move-object v0, v3

    :goto_6
    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    sget-object v0, Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;->ROW:Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;

    goto :goto_9

    :cond_c
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;->COLUMN:Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;

    goto :goto_9

    :cond_d
    :goto_7
    move-object v0, v3

    goto :goto_9

    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_f

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_f
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    if-eq v7, v9, :cond_13

    if-eq v7, v8, :cond_12

    if-eq v7, v6, :cond_10

    goto :goto_8

    :cond_10
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_8

    :cond_11
    sget-object v0, Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;->COLUMN:Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;

    goto :goto_9

    :cond_12
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;->ROW:Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;

    goto :goto_9

    :cond_13
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    :goto_8
    goto :goto_7

    :cond_14
    sget-object v0, Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;->BOX:Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;

    :goto_9
    if-nez v0, :cond_20

    new-instance v0, Lkotlin/text/Regex;

    const-string v7, "(?:\\W|^)(\\w*MeasurePolicy)\\b"

    invoke-direct {v0, v7}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lkotlin/text/Regex;->b(Ljava/lang/CharSequence;)Lkotlin/text/MatchResult;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-interface {v0}, Lkotlin/text/MatchResult;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_15

    const-string v7, "MeasurePolicy"

    invoke-static {v0, v7}, Lkotlin/text/StringsKt;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_15
    move-object v0, v3

    :goto_a
    const-string v7, "RowColumn"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    new-instance v0, Lkotlin/text/Regex;

    const-string v2, "orientation*=*(\\w+)"

    invoke-direct {v0, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lkotlin/text/Regex;->b(Ljava/lang/CharSequence;)Lkotlin/text/MatchResult;

    move-result-object p1

    if-eqz p1, :cond_16

    invoke-interface {p1}, Lkotlin/text/MatchResult;->c()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_16

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_b

    :cond_16
    move-object p1, v3

    :goto_b
    invoke-static {p1, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;->ROW:Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;

    goto :goto_e

    :cond_17
    invoke-static {p1, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    sget-object v0, Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;->COLUMN:Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;

    goto :goto_e

    :cond_18
    if-eqz v0, :cond_19

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_c

    :cond_19
    move-object p1, v3

    :goto_c
    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    if-eq v0, v9, :cond_1d

    if-eq v0, v8, :cond_1c

    if-eq v0, v6, :cond_1a

    goto :goto_d

    :cond_1a
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto :goto_d

    :cond_1b
    sget-object v0, Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;->COLUMN:Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;

    goto :goto_e

    :cond_1c
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    sget-object v0, Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;->ROW:Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;

    goto :goto_e

    :cond_1d
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    goto :goto_d

    :cond_1e
    sget-object v0, Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;->BOX:Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;

    goto :goto_e

    :catch_0
    :cond_1f
    :goto_d
    move-object v0, v3

    :cond_20
    :goto_e
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_f

    :cond_21
    move-object p1, v3

    :goto_f
    if-nez p1, :cond_25

    sget-object p1, Lcom/dynatrace/agent/compose/userinteraction/utils/UserInteractionUtilsKt;->a:Ljava/util/Set;

    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutInfo;->z()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;)Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    move-result-object p1

    new-instance v0, Ly41;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ly41;-><init>(I)V

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->r(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/TransformingSequence;

    move-result-object p1

    sget-object v0, Lcom/dynatrace/agent/compose/userinteraction/utils/UserInteractionUtilsKt$getRole$$inlined$filterIsInstance$1;->b:Lcom/dynatrace/agent/compose/userinteraction/utils/UserInteractionUtilsKt$getRole$$inlined$filterIsInstance$1;

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->f(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object p1

    new-instance v0, Ly41;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ly41;-><init>(I)V

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->f(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object p1

    new-instance v0, Ly41;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ly41;-><init>(I)V

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->r(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/TransformingSequence;

    move-result-object p1

    invoke-static {p1}, Lkotlin/sequences/SequencesKt;->h(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_22

    move-object v3, p1

    goto :goto_10

    :cond_22
    invoke-static {p0}, Lcom/dynatrace/agent/compose/userinteraction/utils/UserInteractionUtilsKt;->b(Landroidx/compose/ui/layout/LayoutInfo;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_23

    const-string v3, "Text"

    :cond_23
    :goto_10
    if-nez v3, :cond_24

    const-string p1, "no-info"

    goto :goto_11

    :cond_24
    move-object p1, v3

    :cond_25
    :goto_11
    return-object p1

    :cond_26
    return-object v0
.end method

.method public static b(Landroidx/compose/ui/layout/LayoutInfo;)Lcom/dynatrace/agent/compose/userinteraction/model/Label;
    .locals 2

    sget-object v0, Lcom/dynatrace/agent/compose/userinteraction/utils/UserInteractionUtilsKt;->a:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutInfo;->z()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/layout/ModifierInfo;

    iget-object v1, v1, Landroidx/compose/ui/layout/ModifierInfo;->a:Landroidx/compose/ui/Modifier;

    instance-of v1, v1, Lcom/dynatrace/agent/compose/api/DTMaskingModifier;

    if-eqz v1, :cond_1

    new-instance p0, Lcom/dynatrace/agent/compose/userinteraction/model/Label;

    const-string v0, "***"

    sget-object v1, Lcom/dynatrace/agent/compose/userinteraction/model/Label$Origin;->MASKED:Lcom/dynatrace/agent/compose/userinteraction/model/Label$Origin;

    invoke-direct {p0, v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/model/Label;-><init>(Ljava/lang/String;Lcom/dynatrace/agent/compose/userinteraction/model/Label$Origin;)V

    return-object p0

    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/dynatrace/agent/compose/userinteraction/utils/UserInteractionUtilsKt;->b(Landroidx/compose/ui/layout/LayoutInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance p0, Lcom/dynatrace/agent/compose/userinteraction/model/Label;

    sget-object v1, Lcom/dynatrace/agent/compose/userinteraction/model/Label$Origin;->TEXT:Lcom/dynatrace/agent/compose/userinteraction/model/Label$Origin;

    invoke-direct {p0, v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/model/Label;-><init>(Ljava/lang/String;Lcom/dynatrace/agent/compose/userinteraction/model/Label$Origin;)V

    return-object p0

    :cond_3
    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/model/Label;

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/dynatrace/agent/compose/userinteraction/handler/TouchUserInteractionHandler;->a(Landroidx/compose/ui/layout/LayoutInfo;Z)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/dynatrace/agent/compose/userinteraction/model/Label$Origin;->COMPONENT:Lcom/dynatrace/agent/compose/userinteraction/model/Label$Origin;

    invoke-direct {v0, p0, v1}, Lcom/dynatrace/agent/compose/userinteraction/model/Label;-><init>(Ljava/lang/String;Lcom/dynatrace/agent/compose/userinteraction/model/Label$Origin;)V

    return-object v0
.end method

.method public static c(Landroidx/compose/ui/layout/LayoutInfo;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_5

    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutInfo;->y()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutInfo;->y()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/dynatrace/agent/compose/userinteraction/handler/TouchUserInteractionHandler;->c(Landroidx/compose/ui/layout/LayoutInfo;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/dynatrace/agent/compose/userinteraction/handler/TouchUserInteractionHandler;->a(Landroidx/compose/ui/layout/LayoutInfo;Z)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutInfo;->x()I

    move-result v4

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    const/4 p1, 0x1

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    :cond_3
    if-nez v1, :cond_4

    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutInfo;->x()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :cond_4
    const/16 p0, 0x5d

    invoke-static {v2, v1, p0}, Lfc;->l(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_1
    const-string p0, ""

    return-object p0
.end method
