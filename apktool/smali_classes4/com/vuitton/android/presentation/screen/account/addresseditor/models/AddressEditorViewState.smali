.class public final Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0001\rB7\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;",
        "",
        "",
        "isLoading",
        "isError",
        "Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;",
        "screenType",
        "Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;",
        "form",
        "Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorAutocompleteSetup;",
        "addressEditorAutocompleteSetup",
        "<init>",
        "(ZZLcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorAutocompleteSetup;)V",
        "Companion",
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
.field public final a:Z

.field public final b:Z

.field public final c:Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;

.field public final d:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

.field public final e:Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorAutocompleteSetup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZLcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorAutocompleteSetup;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;->a:Z

    .line 34
    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;->b:Z

    .line 35
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;->c:Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;

    .line 36
    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    .line 37
    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;->e:Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorAutocompleteSetup;

    return-void
.end method

.method public synthetic constructor <init>(ZZLcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorAutocompleteSetup;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    sget-object p3, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;->ADD_SECONDARY_ADDRESS:Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;

    :cond_2
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_3

    new-instance p5, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorAutocompleteSetup;

    const/4 p6, 0x3

    const/4 p7, 0x0

    invoke-direct {p5, p7, p7, p6, p7}, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorAutocompleteSetup;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_3
    invoke-direct/range {p0 .. p5}, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;-><init>(ZZLcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorAutocompleteSetup;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;->a:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;->c:Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;->c:Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;->e:Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorAutocompleteSetup;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;->e:Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorAutocompleteSetup;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;->b:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;->c:Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a:Ljava/util/List;

    invoke-static {v2, v1, v0}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;->e:Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorAutocompleteSetup;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorAutocompleteSetup;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", isError="

    const-string v1, ", screenType="

    const-string v2, "AddressEditorViewState(isLoading="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;->a:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;->b:Z

    invoke-static {v2, v0, v1, v3, v4}, Lcj;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;->c:Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", form="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", addressEditorAutocompleteSetup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;->e:Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorAutocompleteSetup;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
