.class public final Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingleChoice"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;",
        "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;",
        "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoiceLayout;",
        "layout",
        "",
        "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$ChoiceValue;",
        "values",
        "",
        "selectedId",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoiceLayout;Ljava/util/List;Ljava/lang/String;)V",
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
.field public final a:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoiceLayout;

.field public final b:Ljava/util/List;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoiceLayout;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoiceLayout;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$ChoiceValue;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;->a:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoiceLayout;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;->c:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoiceLayout;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 16
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;-><init>(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoiceLayout;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;->a:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoiceLayout;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;->b:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;

    invoke-direct {p0, v0, v1, p1}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;-><init>(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoiceLayout;Ljava/util/List;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;->b:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$ChoiceValue;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$ChoiceValue;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;->c:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$ChoiceValue;

    if-eqz v1, :cond_2

    iget-object p0, v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$ChoiceValue;->c:Ljava/lang/String;

    if-eqz p0, :cond_2

    new-instance v0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_2
    return-object v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;->a:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoiceLayout;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;->a:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoiceLayout;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;->b:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;->c:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;->a:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoiceLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;->b:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;->c:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final isCompleted()Z
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;->c:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SingleChoice(layout="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;->a:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoiceLayout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", values="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selectedId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;->c:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
