.class public final LMemoryError$Tool$Companion$ADAPTER$1;
.super Lcom/squareup/wire/EnumAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LMemoryError$Tool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/EnumAdapter<",
        "LMemoryError$Tool;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "MemoryError$Tool$Companion$ADAPTER$1",
        "Lcom/squareup/wire/EnumAdapter;",
        "LMemoryError$Tool;",
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


# virtual methods
.method public final j(I)Lcom/squareup/wire/WireEnum;
    .locals 0

    sget-object p0, LMemoryError$Tool;->Companion:LMemoryError$Tool$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, LMemoryError$Tool;->SCUDO:LMemoryError$Tool;

    return-object p0

    :cond_1
    sget-object p0, LMemoryError$Tool;->GWP_ASAN:LMemoryError$Tool;

    return-object p0
.end method
