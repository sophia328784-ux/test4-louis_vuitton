.class public final enum Lcom/vuitton/android/data/account/address/model/PhonePrimacy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/android/data/account/address/model/PhonePrimacy;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u0008\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vuitton/android/data/account/address/model/PhonePrimacy;",
        "",
        "",
        "index",
        "I",
        "a",
        "()I",
        "Lcom/vuitton/android/data/account/address/model/PhoneType;",
        "phoneType",
        "Lcom/vuitton/android/data/account/address/model/PhoneType;",
        "b",
        "()Lcom/vuitton/android/data/account/address/model/PhoneType;",
        "MAIN",
        "OTHER",
        "THIRD",
        "data"
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

.field private static final synthetic $VALUES:[Lcom/vuitton/android/data/account/address/model/PhonePrimacy;

.field public static final enum MAIN:Lcom/vuitton/android/data/account/address/model/PhonePrimacy;

.field public static final enum OTHER:Lcom/vuitton/android/data/account/address/model/PhonePrimacy;

.field public static final enum THIRD:Lcom/vuitton/android/data/account/address/model/PhonePrimacy;


# instance fields
.field private final index:I

.field private final phoneType:Lcom/vuitton/android/data/account/address/model/PhoneType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/vuitton/android/data/account/address/model/PhonePrimacy;

    const/4 v1, 0x0

    sget-object v2, Lcom/vuitton/android/data/account/address/model/PhoneType;->HOME:Lcom/vuitton/android/data/account/address/model/PhoneType;

    const-string v3, "MAIN"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/vuitton/android/data/account/address/model/PhonePrimacy;-><init>(Ljava/lang/String;IILcom/vuitton/android/data/account/address/model/PhoneType;)V

    sput-object v0, Lcom/vuitton/android/data/account/address/model/PhonePrimacy;->MAIN:Lcom/vuitton/android/data/account/address/model/PhonePrimacy;

    new-instance v1, Lcom/vuitton/android/data/account/address/model/PhonePrimacy;

    const/4 v2, 0x1

    sget-object v3, Lcom/vuitton/android/data/account/address/model/PhoneType;->MOBILE:Lcom/vuitton/android/data/account/address/model/PhoneType;

    const-string v4, "OTHER"

    invoke-direct {v1, v4, v2, v2, v3}, Lcom/vuitton/android/data/account/address/model/PhonePrimacy;-><init>(Ljava/lang/String;IILcom/vuitton/android/data/account/address/model/PhoneType;)V

    sput-object v1, Lcom/vuitton/android/data/account/address/model/PhonePrimacy;->OTHER:Lcom/vuitton/android/data/account/address/model/PhonePrimacy;

    new-instance v2, Lcom/vuitton/android/data/account/address/model/PhonePrimacy;

    const/4 v3, 0x2

    sget-object v4, Lcom/vuitton/android/data/account/address/model/PhoneType;->WORK:Lcom/vuitton/android/data/account/address/model/PhoneType;

    const-string v5, "THIRD"

    invoke-direct {v2, v5, v3, v3, v4}, Lcom/vuitton/android/data/account/address/model/PhonePrimacy;-><init>(Ljava/lang/String;IILcom/vuitton/android/data/account/address/model/PhoneType;)V

    sput-object v2, Lcom/vuitton/android/data/account/address/model/PhonePrimacy;->THIRD:Lcom/vuitton/android/data/account/address/model/PhonePrimacy;

    filled-new-array {v0, v1, v2}, [Lcom/vuitton/android/data/account/address/model/PhonePrimacy;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/data/account/address/model/PhonePrimacy;->$VALUES:[Lcom/vuitton/android/data/account/address/model/PhonePrimacy;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/data/account/address/model/PhonePrimacy;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILcom/vuitton/android/data/account/address/model/PhoneType;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/vuitton/android/data/account/address/model/PhonePrimacy;->index:I

    iput-object p4, p0, Lcom/vuitton/android/data/account/address/model/PhonePrimacy;->phoneType:Lcom/vuitton/android/data/account/address/model/PhoneType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/android/data/account/address/model/PhonePrimacy;
    .locals 1

    const-class v0, Lcom/vuitton/android/data/account/address/model/PhonePrimacy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/account/address/model/PhonePrimacy;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/android/data/account/address/model/PhonePrimacy;
    .locals 1

    sget-object v0, Lcom/vuitton/android/data/account/address/model/PhonePrimacy;->$VALUES:[Lcom/vuitton/android/data/account/address/model/PhonePrimacy;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/android/data/account/address/model/PhonePrimacy;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lcom/vuitton/android/data/account/address/model/PhonePrimacy;->index:I

    return p0
.end method

.method public final b()Lcom/vuitton/android/data/account/address/model/PhoneType;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/data/account/address/model/PhonePrimacy;->phoneType:Lcom/vuitton/android/data/account/address/model/PhoneType;

    return-object p0
.end method
