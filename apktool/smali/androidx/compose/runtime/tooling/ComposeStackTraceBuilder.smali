.class public abstract Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008!\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;",
        "",
        "<init>",
        "()V",
        "runtime"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(ILandroidx/compose/runtime/composer/GroupSourceInformation;Ljava/lang/Object;)Z
    .locals 7

    invoke-interface {p2}, Landroidx/compose/runtime/composer/GroupSourceInformation;->a()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    invoke-interface {p2}, Landroidx/compose/runtime/composer/GroupSourceInformation;->c()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, v3}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->b(ILandroidx/compose/runtime/composer/GroupSourceInformation;Ljava/lang/Object;)V

    return v2

    :cond_0
    invoke-interface {p2}, Landroidx/compose/runtime/composer/GroupSourceInformation;->d()I

    move-result p1

    invoke-interface {p2}, Landroidx/compose/runtime/composer/GroupSourceInformation;->b()I

    move-result v0

    instance-of v4, p3, Ljava/lang/Integer;

    if-eqz v4, :cond_8

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-gt p1, v4, :cond_1

    if-ge v4, v0, :cond_1

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    if-ne p1, p3, :cond_2

    :goto_0
    move v1, v2

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {p2}, Landroidx/compose/runtime/composer/GroupSourceInformation;->getKey()I

    move-result p1

    invoke-virtual {p0, p1, p2, v3}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->b(ILandroidx/compose/runtime/composer/GroupSourceInformation;Ljava/lang/Object;)V

    :cond_3
    return v1

    :cond_4
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_8

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Landroidx/compose/runtime/Anchor;

    if-eqz v6, :cond_5

    invoke-virtual {v5, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p2}, Landroidx/compose/runtime/composer/GroupSourceInformation;->getKey()I

    move-result p1

    invoke-virtual {p0, p1, p2, v5}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->b(ILandroidx/compose/runtime/composer/GroupSourceInformation;Ljava/lang/Object;)V

    return v2

    :cond_5
    instance-of v6, v5, Landroidx/compose/runtime/composer/GroupSourceInformation;

    if-eqz v6, :cond_7

    move-object v6, v5

    check-cast v6, Landroidx/compose/runtime/composer/GroupSourceInformation;

    invoke-virtual {p0, p1, v6, p3}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->a(ILandroidx/compose/runtime/composer/GroupSourceInformation;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p2}, Landroidx/compose/runtime/composer/GroupSourceInformation;->getKey()I

    move-result p1

    invoke-virtual {p0, p1, p2, v5}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->b(ILandroidx/compose/runtime/composer/GroupSourceInformation;Ljava/lang/Object;)V

    return v2

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    const-string p0, "Unexpected child source info "

    invoke-static {v5, p0}, Lmt;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    return v1
.end method

.method public final b(ILandroidx/compose/runtime/composer/GroupSourceInformation;Ljava/lang/Object;)V
    .locals 11

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroidx/compose/runtime/composer/GroupSourceInformation;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {v1}, Landroidx/compose/runtime/tooling/SourceInformationKt;->a(Ljava/lang/String;)Landroidx/compose/runtime/tooling/SourceInformation;

    move-result-object v1
    :try_end_0
    .catch Landroidx/compose/runtime/tooling/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_1
    :goto_0
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_9

    if-nez p3, :cond_2

    new-instance p2, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;

    invoke-direct {p2, p1, v1, v0}, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;-><init>(ILandroidx/compose/runtime/tooling/SourceInformation;Ljava/lang/Integer;)V

    goto/16 :goto_4

    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/composer/GroupSourceInformation;->a()Ljava/util/ArrayList;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    move v3, v0

    move v4, v3

    :goto_2
    if-ge v3, v2, :cond_7

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {p0, v5}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->e(Ljava/lang/Object;)Landroidx/compose/runtime/composer/GroupSourceInformation;

    move-result-object v6

    const-string v7, "C"

    const/4 v8, 0x1

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroidx/compose/runtime/composer/GroupSourceInformation;->getKey()I

    move-result v9

    const/16 v10, -0x7f

    if-eq v9, v10, :cond_3

    invoke-interface {v6}, Landroidx/compose/runtime/composer/GroupSourceInformation;->getKey()I

    move-result v9

    if-nez v9, :cond_5

    instance-of v9, v5, Landroidx/compose/runtime/Anchor;

    if-eqz v9, :cond_5

    check-cast v5, Landroidx/compose/runtime/Anchor;

    invoke-virtual {p0, v5}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->c(Landroidx/compose/runtime/Anchor;)I

    move-result v5

    if-ne v5, v10, :cond_5

    :cond_3
    invoke-interface {v6}, Landroidx/compose/runtime/composer/GroupSourceInformation;->e()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    invoke-interface {v6}, Landroidx/compose/runtime/composer/GroupSourceInformation;->a()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v6

    move v9, v0

    :goto_3
    if-ge v9, v6, :cond_6

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p0, v10}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->e(Ljava/lang/Object;)Landroidx/compose/runtime/composer/GroupSourceInformation;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroidx/compose/runtime/composer/GroupSourceInformation;->e()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-static {v10, v7, v0}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    if-ne v10, v8, :cond_4

    add-int/lit8 v4, v4, 0x1

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_5
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroidx/compose/runtime/composer/GroupSourceInformation;->e()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-static {v5, v7, v0}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-ne v5, v8, :cond_6

    add-int/lit8 v4, v4, 0x1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    move v0, v4

    :cond_8
    new-instance p2, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p2, p1, v1, p3}, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;-><init>(ILandroidx/compose/runtime/tooling/SourceInformation;Ljava/lang/Integer;)V

    goto :goto_4

    :cond_9
    new-instance p2, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;

    invoke-direct {p2, p1, v0, v0}, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;-><init>(ILandroidx/compose/runtime/tooling/SourceInformation;Ljava/lang/Integer;)V

    :goto_4
    iget-object p0, p0, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract c(Landroidx/compose/runtime/Anchor;)I
.end method

.method public final d(ILjava/lang/Object;Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;Ljava/lang/Object;)V
    .locals 1

    if-nez p3, :cond_0

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_3

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, p3, p4}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->a(ILandroidx/compose/runtime/composer/GroupSourceInformation;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0, p1, p3, p4}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->b(ILandroidx/compose/runtime/composer/GroupSourceInformation;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p3, p2}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->b(ILandroidx/compose/runtime/composer/GroupSourceInformation;Ljava/lang/Object;)V

    return-void
.end method

.method public final e(Ljava/lang/Object;)Landroidx/compose/runtime/composer/GroupSourceInformation;
    .locals 1

    instance-of v0, p1, Landroidx/compose/runtime/Anchor;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/runtime/Anchor;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->f(Landroidx/compose/runtime/Anchor;)Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of p0, p1, Landroidx/compose/runtime/composer/GroupSourceInformation;

    if-eqz p0, :cond_1

    check-cast p1, Landroidx/compose/runtime/composer/GroupSourceInformation;

    return-object p1

    :cond_1
    const-string p0, "Unexpected child source info "

    invoke-static {p1, p0}, Lmt;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract f(Landroidx/compose/runtime/Anchor;)Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;
.end method
