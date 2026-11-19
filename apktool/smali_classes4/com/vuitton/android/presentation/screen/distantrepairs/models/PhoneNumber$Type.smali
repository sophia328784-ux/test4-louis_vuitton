.class public final enum Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u0000 \u000c2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000cR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u0008\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;",
        "",
        "",
        "value",
        "Ljava/lang/String;",
        "c",
        "()Ljava/lang/String;",
        "",
        "displayStringId",
        "I",
        "a",
        "()I",
        "Companion",
        "MOBILE",
        "HOME",
        "WORK",
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

.field private static final synthetic $VALUES:[Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;

.field public static final Companion:Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type$Companion;

.field public static final enum HOME:Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;

.field public static final enum MOBILE:Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;

.field public static final enum WORK:Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;


# instance fields
.field private final displayStringId:I

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;

    const-string v1, "mobile"

    const v2, 0x7f140db1

    const-string v3, "MOBILE"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;->MOBILE:Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;

    new-instance v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;

    const-string v2, "home"

    const v3, 0x7f140db0

    const-string v4, "HOME"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;->HOME:Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;

    new-instance v2, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;

    const-string v3, "work"

    const v4, 0x7f140db2

    const-string v5, "WORK"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v3, v4}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;->WORK:Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;

    filled-new-array {v0, v1, v2}, [Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;->$VALUES:[Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;->Companion:Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;->value:Ljava/lang/String;

    iput p4, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;->displayStringId:I

    return-void
.end method

.method public static b()Lkotlin/enums/EnumEntries;
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;
    .locals 1

    const-class v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;->$VALUES:[Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;->displayStringId:I

    return p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;->value:Ljava/lang/String;

    return-object p0
.end method
