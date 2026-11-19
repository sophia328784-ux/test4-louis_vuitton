.class public final Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u00002\u00020\u0001BM\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u000e\u0008\u0002\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;",
        "",
        "",
        "loading",
        "",
        "autocompleteUUID",
        "addressSearchBarValue",
        "",
        "Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/PlaceAutocompleteUiModel;",
        "addressList",
        "Landroidx/compose/ui/autofill/AutofillNode;",
        "addressAutofillNode",
        "isDebounceEnabled",
        "<init>",
        "(ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Landroidx/compose/ui/autofill/AutofillNode;Z)V",
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

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/List;

.field public final e:Landroidx/compose/ui/autofill/AutofillNode;

.field public final f:Z


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 54
    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Landroidx/compose/ui/autofill/AutofillNode;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Landroidx/compose/ui/autofill/AutofillNode;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/PlaceAutocompleteUiModel;",
            ">;",
            "Landroidx/compose/ui/autofill/AutofillNode;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;->a:Z

    .line 49
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;->b:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;->c:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;->d:Ljava/util/List;

    .line 52
    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;->e:Landroidx/compose/ui/autofill/AutofillNode;

    .line 53
    iput-boolean p6, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;->f:Z

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Landroidx/compose/ui/autofill/AutofillNode;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    const/4 v0, 0x0

    if-eqz p8, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    new-instance p3, Ljava/lang/String;

    invoke-direct {p3}, Ljava/lang/String;-><init>()V

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    sget-object p4, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    const/4 p6, 0x1

    :cond_5
    move-object p7, p5

    move p8, p6

    move-object p5, p3

    move-object p6, p4

    move p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-direct/range {p2 .. p8}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Landroidx/compose/ui/autofill/AutofillNode;Z)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;->a:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;->d:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;->d:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;->e:Landroidx/compose/ui/autofill/AutofillNode;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;->e:Landroidx/compose/ui/autofill/AutofillNode;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;->f:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;->f:Z

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;->b:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;->c:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;->d:Ljava/util/List;

    invoke-static {v0, v1, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;->e:Landroidx/compose/ui/autofill/AutofillNode;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroidx/compose/ui/autofill/AutofillNode;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;->f:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AddressAutocompleteViewState(loading="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", autocompleteUUID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", addressSearchBarValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", addressList="

    const-string v2, ", addressAutofillNode="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;->d:Ljava/util/List;

    invoke-static {v3, v1, v2, v0, v4}, Ld21;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;->e:Landroidx/compose/ui/autofill/AutofillNode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isDebounceEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;->f:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
