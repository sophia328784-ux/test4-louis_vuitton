.class public abstract Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "forms"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcom/vuitton/core/infrastructure/data/forms/models/AccountActivationFormDto;)Lcom/vuitton/foundation/model/domain/model/forms/Form;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AccountActivationFormDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->NEW_PASSWORD:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AccountActivationFormDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->PRIVACY_POLICY_CONSENT:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {p0, v1}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object p0

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/forms/Form;

    new-instance v1, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt$toDomain$$inlined$sortedBy$8;

    invoke-direct {v1}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt$toDomain$$inlined$sortedBy$8;-><init>()V

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->o0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/forms/Form;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static final b(Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;)Lcom/vuitton/foundation/model/domain/model/forms/Form;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->ADDRESS1:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->ADDRESS2:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->ADDRESS3:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->CITY:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-eqz v1, :cond_2

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->CIVILITY:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->h:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->COUNTRY:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->i:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-eqz v1, :cond_3

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->COUNTY:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->j:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-eqz v1, :cond_4

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->DESCRIPTION:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->k:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-eqz v1, :cond_5

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->FIRSTNAME:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->l:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-eqz v1, :cond_6

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->FIRSTNAME2:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->m:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-eqz v1, :cond_7

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->LASTNAME:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->n:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-eqz v1, :cond_8

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->LASTNAME2:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->o:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;

    invoke-static {v1}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->k(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;)Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->p:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-eqz v1, :cond_9

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->POSTAL_CODE:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->q:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-eqz v1, :cond_a

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->STATE:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->r:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-eqz v1, :cond_b

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->STREET:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->s:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-eqz p0, :cond_c

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->STREET_NUMBER:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {p0, v1}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object p0

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/forms/Form;

    new-instance v1, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt$toDomain$$inlined$sortedBy$1;

    invoke-direct {v1}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt$toDomain$$inlined$sortedBy$1;-><init>()V

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->o0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/forms/Form;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static final c(Lcom/vuitton/core/infrastructure/data/forms/models/AuthenticationFormDto;)Lcom/vuitton/foundation/model/domain/model/forms/Form;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AuthenticationFormDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->EMAIL:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AuthenticationFormDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->PASSWORD:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {p0, v1}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object p0

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/forms/Form;

    new-instance v1, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt$toDomain$$inlined$sortedBy$6;

    invoke-direct {v1}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt$toDomain$$inlined$sortedBy$6;-><init>()V

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->o0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/forms/Form;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static final d(Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto;)Lcom/vuitton/foundation/model/domain/model/forms/Form;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto;->h:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->EMAIL:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->CIVILITY:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->FIRSTNAME:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->LASTNAME:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->FIRSTNAME2:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-eqz v1, :cond_2

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->LASTNAME2:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto;->g:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-eqz v1, :cond_3

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->COUNTRY:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto;->i:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;

    invoke-static {v1}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->k(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;)Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto;->j:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->BOOKING_MARKETING_EMAILS_CONSENT:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto;->k:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-eqz p0, :cond_4

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->BOOKING_PERSONAL_DATA_COLLECTION_CONSENT:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {p0, v1}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object p0

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/forms/Form;

    new-instance v1, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt$toDomain$$inlined$sortedBy$10;

    invoke-direct {v1}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt$toDomain$$inlined$sortedBy$10;-><init>()V

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->o0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/forms/Form;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static final e(Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto;)Lcom/vuitton/foundation/model/domain/model/forms/Form;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->EMAIL:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->POSTAL_CODE:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;

    invoke-static {p0}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->k(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;)Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object p0

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/forms/Form;

    new-instance v1, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt$toDomain$$inlined$sortedBy$9;

    invoke-direct {v1}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt$toDomain$$inlined$sortedBy$9;-><init>()V

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->o0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/forms/Form;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static final f(Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;)Lcom/vuitton/foundation/model/domain/model/forms/Form;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->EMAIL:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->CIVILITY:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->FIRSTNAME:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->LASTNAME:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->FIRSTNAME2:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->g:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->LASTNAME2:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->h:Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileConsentsFormFieldDto;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileConsentsFormFieldDto;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-eqz p0, :cond_2

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->ALL_MARKETING_COMMUNICATIONS_CONSENTS:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {p0, v1}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object p0

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/forms/Form;

    new-instance v1, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt$toDomain$$inlined$sortedBy$7;

    invoke-direct {v1}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt$toDomain$$inlined$sortedBy$7;-><init>()V

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->o0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/forms/Form;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static final g(Lcom/vuitton/core/infrastructure/data/forms/models/GuestAppointmentFormDto;)Lcom/vuitton/foundation/model/domain/model/forms/Form;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/GuestAppointmentFormDto;->j:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->EMAIL:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/GuestAppointmentFormDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->CIVILITY:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/GuestAppointmentFormDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->FIRSTNAME:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/GuestAppointmentFormDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->LASTNAME:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/GuestAppointmentFormDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->FIRSTNAME2:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/GuestAppointmentFormDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->LASTNAME2:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/GuestAppointmentFormDto;->g:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->COUNTRY:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/GuestAppointmentFormDto;->i:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;

    invoke-static {p0}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->k(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;)Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object p0

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/forms/Form;

    new-instance v1, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt$toDomain$$inlined$sortedBy$2;

    invoke-direct {v1}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt$toDomain$$inlined$sortedBy$2;-><init>()V

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->o0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/forms/Form;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static final h(Lcom/vuitton/core/infrastructure/data/forms/models/ProfileFormDto;)Lcom/vuitton/foundation/model/domain/model/forms/Form;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/ProfileFormDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->CIVILITY:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/ProfileFormDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->FIRSTNAME:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/ProfileFormDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->LASTNAME:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/ProfileFormDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->FIRSTNAME2:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/ProfileFormDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->LASTNAME2:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/ProfileFormDto;->g:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-eqz v1, :cond_2

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->VAT_CODE:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/ProfileFormDto;->h:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-eqz v1, :cond_3

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->BRANCH_ID:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/ProfileFormDto;->i:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;

    if-eqz p0, :cond_4

    invoke-static {p0}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->k(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;)Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object p0

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/forms/Form;

    new-instance v1, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt$toDomain$$inlined$sortedBy$4;

    invoke-direct {v1}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt$toDomain$$inlined$sortedBy$4;-><init>()V

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->o0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/forms/Form;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static final i(Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;)Lcom/vuitton/foundation/model/domain/model/forms/Form;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->m:Lcom/vuitton/core/infrastructure/data/forms/models/RegisterConsentsFormFieldDto;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->EMAIL:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v3}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->NEW_PASSWORD:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v3}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->CONFIRM_PASSWORD:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v3}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->CIVILITY:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v3}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->k:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->COUNTRY:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v3}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->j:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->BIRTHDATE:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v3}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->FIRSTNAME:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v3}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->g:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->LASTNAME:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v3}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->h:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-eqz v1, :cond_0

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->FIRSTNAME2:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v3}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->i:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-eqz v1, :cond_1

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->LASTNAME2:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v3}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->l:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;

    invoke-static {v1}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->k(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;)Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->n:Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;

    if-eqz p0, :cond_7

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-eqz v1, :cond_2

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->ADDRESS1:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v3}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-eqz v1, :cond_3

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->ADDRESS2:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v3}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-eqz v1, :cond_4

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->ADDRESS3:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v3}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-eqz v1, :cond_5

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->CITY:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v3}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-eqz v1, :cond_6

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->POSTAL_CODE:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v3}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-eqz p0, :cond_7

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->STATE:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {p0, v1}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object p0, v2, Lcom/vuitton/core/infrastructure/data/forms/models/RegisterConsentsFormFieldDto;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-eqz p0, :cond_8

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->LEGACY_CONSENTS:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {p0, v1}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object p0, v2, Lcom/vuitton/core/infrastructure/data/forms/models/RegisterConsentsFormFieldDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-eqz p0, :cond_9

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->ALL_MARKETING_COMMUNICATIONS_CONSENTS:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {p0, v1}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object p0, v2, Lcom/vuitton/core/infrastructure/data/forms/models/RegisterConsentsFormFieldDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-eqz p0, :cond_a

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->PRIVACY_POLICY_CONSENT:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {p0, v1}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object p0, v2, Lcom/vuitton/core/infrastructure/data/forms/models/RegisterConsentsFormFieldDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-eqz p0, :cond_b

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->MARKETING_EMAILS_CONSENT:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {p0, v1}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-object p0, v2, Lcom/vuitton/core/infrastructure/data/forms/models/RegisterConsentsFormFieldDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-eqz p0, :cond_c

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->EMAIL_TRACKING_CONSENT:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {p0, v1}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_c
    iget-object p0, v2, Lcom/vuitton/core/infrastructure/data/forms/models/RegisterConsentsFormFieldDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-eqz p0, :cond_d

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->TARGETED_ADVERTISING_CONSENT:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {p0, v1}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_d
    iget-object p0, v2, Lcom/vuitton/core/infrastructure/data/forms/models/RegisterConsentsFormFieldDto;->g:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-eqz p0, :cond_e

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->MARKETING_TEXTS_CONSENT:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {p0, v1}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object p0

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/forms/Form;

    new-instance v1, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt$toDomain$$inlined$sortedBy$5;

    invoke-direct {v1}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt$toDomain$$inlined$sortedBy$5;-><init>()V

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->o0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/forms/Form;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static final j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;
    .locals 13

    iget-boolean v0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->a:Z

    iget v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->b:I

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;

    iget-object v2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeFreeformDto;

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;

    if-eqz v2, :cond_0

    new-instance p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldFreeform;

    iget-object v3, v2, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeFreeformDto;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeFreeformDto;->b:Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldFreeform;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_0
    iget-object v2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeReadOnlyEnumDto;

    if-eqz v2, :cond_1

    new-instance p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldReadOnlyEnum;

    iget-object v2, v2, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeReadOnlyEnumDto;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumValueDto;

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/forms/FormEnumValue;

    iget-object v4, v2, Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumValueDto;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumValueDto;->b:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lcom/vuitton/foundation/model/domain/model/forms/FormEnumValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldReadOnlyEnum;-><init>(Lcom/vuitton/foundation/model/domain/model/forms/FormEnumValue;)V

    goto/16 :goto_6

    :cond_1
    iget-object v2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentEnumDto;

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eqz v2, :cond_5

    iget-object p0, v2, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentEnumDto;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentEnumDto;->b:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumDependentValueDto;

    iget-object v7, v6, Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumDependentValueDto;->a:Ljava/lang/String;

    iget-object v8, v6, Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumDependentValueDto;->b:Ljava/util/List;

    check-cast v8, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v8, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumValueDto;

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/forms/FormEnumValue;

    iget-object v12, v10, Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumValueDto;->a:Ljava/lang/String;

    iget-object v10, v10, Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumValueDto;->b:Ljava/lang/String;

    invoke-direct {v11, v12, v10}, Lcom/vuitton/foundation/model/domain/model/forms/FormEnumValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v6, v6, Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumDependentValueDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumValueDto;

    if-eqz v6, :cond_3

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/forms/FormEnumValue;

    iget-object v10, v6, Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumValueDto;->a:Ljava/lang/String;

    iget-object v6, v6, Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumValueDto;->b:Ljava/lang/String;

    invoke-direct {v8, v10, v6}, Lcom/vuitton/foundation/model/domain/model/forms/FormEnumValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object v8, v5

    :goto_2
    new-instance v6, Lcom/vuitton/foundation/model/domain/model/forms/FormEnumDependentValue;

    invoke-direct {v6, v7, v9, v8}, Lcom/vuitton/foundation/model/domain/model/forms/FormEnumDependentValue;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/forms/FormEnumValue;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance v2, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldDependentEnum;

    invoke-direct {v2, p0, v3}, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldDependentEnum;-><init>(Ljava/lang/String;Ljava/util/List;)V

    :goto_3
    move-object p0, v2

    goto :goto_6

    :cond_5
    if-eqz v3, :cond_8

    iget-object p0, v3, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;->a:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p0, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumValueDto;

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/forms/FormEnumValue;

    iget-object v7, v4, Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumValueDto;->a:Ljava/lang/String;

    iget-object v4, v4, Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumValueDto;->b:Ljava/lang/String;

    invoke-direct {v6, v7, v4}, Lcom/vuitton/foundation/model/domain/model/forms/FormEnumValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    iget-object p0, v3, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumValueDto;

    if-eqz p0, :cond_7

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/forms/FormEnumValue;

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumValueDto;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumValueDto;->b:Ljava/lang/String;

    invoke-direct {v5, v3, p0}, Lcom/vuitton/foundation/model/domain/model/forms/FormEnumValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldEnum;

    invoke-direct {p0, v2, v5}, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldEnum;-><init>(Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/forms/FormEnumValue;)V

    goto :goto_6

    :cond_8
    iget-object v2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentRemoteEnumDto;

    if-eqz v2, :cond_9

    new-instance p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldDependentRemoteEnum;

    iget-object v3, v2, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentRemoteEnumDto;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentRemoteEnumDto;->b:Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldDependentRemoteEnum;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeBooleanDto;

    if-eqz p0, :cond_b

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldBoolean;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeBooleanDto;->a:Ljava/lang/Boolean;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_5

    :cond_a
    const/4 p0, 0x0

    :goto_5
    invoke-direct {v2, p0}, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldBoolean;-><init>(Z)V

    goto :goto_3

    :cond_b
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldFreeform;

    invoke-direct {p0, v5, v5}, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldFreeform;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    new-instance v2, Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    invoke-direct {v2, v0, v1, p1, p0}, Lcom/vuitton/foundation/model/domain/model/forms/FormField;-><init>(ZILcom/vuitton/foundation/model/domain/model/forms/FormSectionType;Lcom/vuitton/foundation/model/domain/model/forms/FormFieldType;)V

    return-object v2
.end method

.method public static final k(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;)Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;
    .locals 8

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;

    iget v2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->f:I

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->PHONE:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    iget v4, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->b:I

    iget v5, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->a:I

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    sget-object v6, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->PHONE_NUMBER:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v1, v6}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v1

    iget-object v6, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    sget-object v7, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->PHONE_NUMBER_COUNTRY:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v6, v7}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object v6

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    sget-object v7, Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;->PHONE_NUMBER_TYPE:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {p0, v7}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->j(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object p0

    filled-new-array {v1, v6, p0}, [Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v1, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt$toDomain$$inlined$sortedBy$3;

    invoke-direct {v1}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt$toDomain$$inlined$sortedBy$3;-><init>()V

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->o0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v6

    const/4 v1, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;-><init>(ZILcom/vuitton/foundation/model/domain/model/forms/FormSectionType;IILjava/util/List;)V

    return-object v0
.end method
