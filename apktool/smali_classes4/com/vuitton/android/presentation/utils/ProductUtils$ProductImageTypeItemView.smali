.class public final enum Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageTypeItemView;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/utils/ProductUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProductImageTypeItemView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageTypeItemView;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageTypeItemView;",
        "",
        "",
        "key",
        "Ljava/lang/String;",
        "b",
        "()Ljava/lang/String;",
        "FRONT",
        "WORN",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageTypeItemView;

.field public static final enum FRONT:Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageTypeItemView;

.field public static final enum WORN:Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageTypeItemView;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageTypeItemView;

    const/4 v1, 0x0

    const-string v2, "front"

    const-string v3, "FRONT"

    invoke-direct {v0, v3, v1, v2}, Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageTypeItemView;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageTypeItemView;->FRONT:Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageTypeItemView;

    new-instance v1, Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageTypeItemView;

    const/4 v2, 0x1

    const-string v3, "worn"

    const-string v4, "WORN"

    invoke-direct {v1, v4, v2, v3}, Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageTypeItemView;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageTypeItemView;->WORN:Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageTypeItemView;

    filled-new-array {v0, v1}, [Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageTypeItemView;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageTypeItemView;->$VALUES:[Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageTypeItemView;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageTypeItemView;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageTypeItemView;->key:Ljava/lang/String;

    return-void
.end method

.method public static a()Lkotlin/enums/EnumEntries;
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageTypeItemView;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageTypeItemView;
    .locals 1

    const-class v0, Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageTypeItemView;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageTypeItemView;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageTypeItemView;
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageTypeItemView;->$VALUES:[Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageTypeItemView;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageTypeItemView;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageTypeItemView;->key:Ljava/lang/String;

    return-object p0
.end method
