.class public final enum Lcom/sightcall/mediacapture/domain/entities/MediaType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sightcall/mediacapture/domain/entities/MediaType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0081\u0002\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0006\u0010\u0007\u001a\u00020\u0008J\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0008j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/sightcall/mediacapture/domain/entities/MediaType;",
        "Landroid/os/Parcelable;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "Photo",
        "Video",
        "describeContents",
        "",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
        "lib_release"
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

.field private static final synthetic $VALUES:[Lcom/sightcall/mediacapture/domain/entities/MediaType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sightcall/mediacapture/domain/entities/MediaType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum Photo:Lcom/sightcall/mediacapture/domain/entities/MediaType;

.field public static final enum Video:Lcom/sightcall/mediacapture/domain/entities/MediaType;


# direct methods
.method private static final synthetic $values()[Lcom/sightcall/mediacapture/domain/entities/MediaType;
    .locals 2

    sget-object v0, Lcom/sightcall/mediacapture/domain/entities/MediaType;->Photo:Lcom/sightcall/mediacapture/domain/entities/MediaType;

    sget-object v1, Lcom/sightcall/mediacapture/domain/entities/MediaType;->Video:Lcom/sightcall/mediacapture/domain/entities/MediaType;

    filled-new-array {v0, v1}, [Lcom/sightcall/mediacapture/domain/entities/MediaType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sightcall/mediacapture/domain/entities/MediaType;

    const-string v1, "Photo"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sightcall/mediacapture/domain/entities/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/mediacapture/domain/entities/MediaType;->Photo:Lcom/sightcall/mediacapture/domain/entities/MediaType;

    new-instance v0, Lcom/sightcall/mediacapture/domain/entities/MediaType;

    const-string v1, "Video"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sightcall/mediacapture/domain/entities/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/mediacapture/domain/entities/MediaType;->Video:Lcom/sightcall/mediacapture/domain/entities/MediaType;

    invoke-static {}, Lcom/sightcall/mediacapture/domain/entities/MediaType;->$values()[Lcom/sightcall/mediacapture/domain/entities/MediaType;

    move-result-object v0

    sput-object v0, Lcom/sightcall/mediacapture/domain/entities/MediaType;->$VALUES:[Lcom/sightcall/mediacapture/domain/entities/MediaType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/sightcall/mediacapture/domain/entities/MediaType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/sightcall/mediacapture/domain/entities/MediaType$Creator;

    invoke-direct {v0}, Lcom/sightcall/mediacapture/domain/entities/MediaType$Creator;-><init>()V

    sput-object v0, Lcom/sightcall/mediacapture/domain/entities/MediaType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/sightcall/mediacapture/domain/entities/MediaType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sightcall/mediacapture/domain/entities/MediaType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sightcall/mediacapture/domain/entities/MediaType;
    .locals 1

    const-class v0, Lcom/sightcall/mediacapture/domain/entities/MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sightcall/mediacapture/domain/entities/MediaType;

    return-object p0
.end method

.method public static values()[Lcom/sightcall/mediacapture/domain/entities/MediaType;
    .locals 1

    sget-object v0, Lcom/sightcall/mediacapture/domain/entities/MediaType;->$VALUES:[Lcom/sightcall/mediacapture/domain/entities/MediaType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/mediacapture/domain/entities/MediaType;

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
