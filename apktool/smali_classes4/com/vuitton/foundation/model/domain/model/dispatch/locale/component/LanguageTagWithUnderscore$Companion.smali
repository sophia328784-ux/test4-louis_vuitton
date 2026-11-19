.class public final Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagWithUnderscore$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagWithUnderscore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagWithUnderscore$Companion;",
        "",
        "domain"
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
.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    const-string v0, "-"

    const-string v1, "_"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagWithUnderscore;

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagWithUnderscore;-><init>(Ljava/lang/String;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_0
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of p0, v0, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_3

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_1
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v0, p0, Lkotlin/Result$Failure;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object p0, v1

    :cond_1
    check-cast p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagWithUnderscore;

    if-eqz p0, :cond_2

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagWithUnderscore;->a:Ljava/lang/String;

    :cond_2
    return-object v1

    :cond_3
    throw v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagWithUnderscore$Companion;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagWithUnderscore;

    invoke-direct {v1, p0}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagWithUnderscore;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    iget-object p0, v1, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagWithUnderscore;->a:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p0, "Required value was null."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v0
.end method
