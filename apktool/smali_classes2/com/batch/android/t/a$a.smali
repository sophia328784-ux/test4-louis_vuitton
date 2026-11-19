.class public final Lcom/batch/android/t/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/t/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/batch/android/t/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/batch/android/t/a;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 43
    invoke-static {}, Lcom/batch/android/t/a;->b()Lkotlin/enums/EnumEntries;

    move-result-object p0

    const/4 v0, 0x0

    .line 44
    new-array v1, v0, [Lcom/batch/android/t/a;

    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .line 45
    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p0, v0

    move-object v3, v2

    check-cast v3, Lcom/batch/android/t/a;

    .line 46
    invoke-virtual {v3}, Lcom/batch/android/t/a;->c()I

    move-result v3

    if-ne v3, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 47
    :goto_1
    check-cast v2, Lcom/batch/android/t/a;

    return-object v2
.end method

.method public final a(Ljava/util/Calendar;)Lcom/batch/android/t/a;
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/batch/android/t/a;->b()Lkotlin/enums/EnumEntries;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/batch/android/t/a;

    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p0, v0

    move-object v3, v2

    check-cast v3, Lcom/batch/android/t/a;

    invoke-virtual {v3}, Lcom/batch/android/t/a;->c()I

    move-result v3

    const/4 v4, 0x7

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    check-cast v2, Lcom/batch/android/t/a;

    return-object v2
.end method
