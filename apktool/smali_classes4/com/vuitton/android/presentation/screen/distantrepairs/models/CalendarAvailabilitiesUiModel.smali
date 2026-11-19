.class public final Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B1\u0012\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0002\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;",
        "",
        "",
        "Ljava/time/LocalDate;",
        "availableDateList",
        "Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;",
        "availableStoreSlots",
        "",
        "storeTimeZone",
        "<init>",
        "(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V",
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


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/List;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 26
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/time/LocalDate;",
            ">;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;->a:Ljava/util/List;

    .line 24
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;->b:Ljava/util/List;

    .line 25
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    sget-object p1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    sget-object p2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const-string p3, ""

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;Ljava/util/List;Ljava/util/ArrayList;Ljava/lang/String;I)Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;
    .locals 1

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;->a:Ljava/util/List;

    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;->b:Ljava/util/List;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;->c:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;

    invoke-direct {p0, p1, p2, p3}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;->a:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;->b:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;->c:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;->b:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", availableStoreSlots="

    const-string v1, ", storeTimeZone="

    const-string v2, "CalendarAvailabilitiesUiModel(availableDateList="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;->a:Ljava/util/List;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;->b:Ljava/util/List;

    invoke-static {v2, v0, v1, v3, v4}, Lo60;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;->c:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
