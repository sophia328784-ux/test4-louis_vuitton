.class public final enum Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0087\u0081\u0002\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;",
        "Landroid/os/Parcelable;",
        "",
        "LOCKED",
        "UNLOCKED",
        "PENDING",
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

.field private static final synthetic $VALUES:[Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum LOCKED:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;

.field public static final enum PENDING:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;

.field public static final enum UNLOCKED:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;

    const-string v1, "LOCKED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;->LOCKED:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;

    new-instance v1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;

    const-string v2, "UNLOCKED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;->UNLOCKED:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;

    new-instance v2, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;

    const-string v3, "PENDING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;->PENDING:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;

    filled-new-array {v0, v1, v2}, [Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;->$VALUES:[Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel$Creator;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel$Creator;-><init>()V

    sput-object v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;
    .locals 1

    const-class v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;->$VALUES:[Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
