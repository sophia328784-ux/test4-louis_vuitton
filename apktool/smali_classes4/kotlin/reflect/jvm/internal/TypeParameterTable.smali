.class public final Lkotlin/reflect/jvm/internal/TypeParameterTable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/TypeParameterTable$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/TypeParameterTable;",
        "",
        "Companion",
        "kotlin-reflection"
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
.field public static final d:Lkotlin/reflect/jvm/internal/TypeParameterTable$Companion;

.field public static final e:Lkotlin/reflect/jvm/internal/TypeParameterTable;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/Map;

.field public final c:Lkotlin/reflect/jvm/internal/TypeParameterTable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lkotlin/reflect/jvm/internal/TypeParameterTable$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/TypeParameterTable$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/TypeParameterTable;->d:Lkotlin/reflect/jvm/internal/TypeParameterTable$Companion;

    new-instance v0, Lkotlin/reflect/jvm/internal/TypeParameterTable;

    sget-object v2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lkotlin/reflect/jvm/internal/TypeParameterTable;-><init>(Ljava/util/List;Ljava/util/Map;Lkotlin/reflect/jvm/internal/TypeParameterTable;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/TypeParameterTable;->e:Lkotlin/reflect/jvm/internal/TypeParameterTable;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/Map;Lkotlin/reflect/jvm/internal/TypeParameterTable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/TypeParameterTable;->a:Ljava/util/List;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/TypeParameterTable;->b:Ljava/util/Map;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/TypeParameterTable;->c:Lkotlin/reflect/jvm/internal/TypeParameterTable;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/Map;Lkotlin/reflect/jvm/internal/TypeParameterTable;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/TypeParameterTable;-><init>(Ljava/util/List;Ljava/util/Map;Lkotlin/reflect/jvm/internal/TypeParameterTable;)V

    return-void
.end method


# virtual methods
.method public final a(I)Lkotlin/reflect/KTypeParameter;
    .locals 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/TypeParameterTable;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KTypeParameter;

    if-nez v0, :cond_1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/TypeParameterTable;->c:Lkotlin/reflect/jvm/internal/TypeParameterTable;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/TypeParameterTable;->a(I)Lkotlin/reflect/KTypeParameter;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    return-object v0
.end method
