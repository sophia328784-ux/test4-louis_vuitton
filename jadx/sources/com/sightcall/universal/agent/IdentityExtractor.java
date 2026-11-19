package com.sightcall.universal.agent;

import com.sightcall.universal.api.JsonApi;
import defpackage.n00;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class IdentityExtractor {
    final List<ArOverlayModel> arOverlayModels;
    final Code code;
    final Consent consent;
    final Identity identity;
    final JsonApi.Included[] included;
    final List<IntegrationScope> integrationScopes;
    final List<ProviderCustomization> providerCustomizations;
    final List<Usecase> usecases;

    /* JADX INFO: renamed from: com.sightcall.universal.agent.IdentityExtractor$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$universal$agent$Usecase$CallDistribution;

        static {
            int[] iArr = new int[Usecase.CallDistribution.values().length];
            $SwitchMap$com$sightcall$universal$agent$Usecase$CallDistribution = iArr;
            try {
                iArr[Usecase.CallDistribution.DIRECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sightcall$universal$agent$Usecase$CallDistribution[Usecase.CallDistribution.CODE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sightcall$universal$agent$Usecase$CallDistribution[Usecase.CallDistribution.ACD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private IdentityExtractor(Identity identity, JsonApi.Included[] includedArr, Consent consent, List<Usecase> list, Code code, List<ProviderCustomization> list2, List<ArOverlayModel> list3, List<IntegrationScope> list4) {
        this.identity = identity;
        this.included = includedArr;
        this.consent = consent;
        this.usecases = list;
        this.code = code;
        this.providerCustomizations = list2;
        this.arOverlayModels = list3;
        this.integrationScopes = list4;
    }

    public static IdentityExtractor extract(JsonApi.Wrapper<Identity> wrapper) {
        Identity identity = (Identity) JsonApi.Wrapper.unwrap(wrapper);
        if (wrapper == null || identity == null) {
            return null;
        }
        Identity.Relationships relationships = identity.relationships;
        JsonApi.Included[] includedArrIncluded = wrapper.included();
        return (relationships == null || includedArrIncluded == null) ? new IdentityExtractor(identity, includedArrIncluded, null, null, null, null, null, null) : new IdentityExtractor(identity, includedArrIncluded, extractConsent(relationships, includedArrIncluded), extractUsecases(relationships, includedArrIncluded), extractCode(relationships, includedArrIncluded), extractProviderCustomizations(relationships, includedArrIncluded), extractArOverlayModels(relationships, includedArrIncluded), extractIntegrationScopes(relationships, includedArrIncluded));
    }

    private static List<ArOverlayModel> extractArOverlayModels(Identity.Relationships relationships, JsonApi.Included[] includedArr) {
        ArrayList arrayList = new ArrayList();
        for (JsonApi.Included included : includedArr) {
            if (included instanceof ArOverlayModel) {
                arrayList.add((ArOverlayModel) included);
            }
        }
        return arrayList;
    }

    private static Code extractCode(Identity.Relationships relationships, JsonApi.Included[] includedArr) {
        JsonApi.Linkage linkage = (JsonApi.Linkage) JsonApi.Wrapper.unwrap(relationships.pincode);
        if (linkage == null) {
            return null;
        }
        for (JsonApi.Included included : includedArr) {
            if (linkage.matches(included)) {
                return new Code((Pincode) included);
            }
        }
        return null;
    }

    private static Consent extractConsent(Identity.Relationships relationships, JsonApi.Included[] includedArr) {
        JsonApi.Linkage linkage = (JsonApi.Linkage) JsonApi.Wrapper.unwrap(relationships.consent);
        if (linkage == null) {
            return null;
        }
        for (JsonApi.Included included : includedArr) {
            if (linkage.matches(included)) {
                return (Consent) included;
            }
        }
        return null;
    }

    private static List<IntegrationScope> extractIntegrationScopes(Identity.Relationships relationships, JsonApi.Included[] includedArr) {
        ArrayList arrayList = new ArrayList();
        for (JsonApi.Included included : includedArr) {
            if (included instanceof IntegrationScope) {
                arrayList.add((IntegrationScope) included);
            }
        }
        return arrayList;
    }

    private static List<ProviderCustomization> extractProviderCustomizations(Identity.Relationships relationships, JsonApi.Included[] includedArr) {
        ArrayList arrayList = new ArrayList();
        for (JsonApi.Included included : includedArr) {
            if (included instanceof ProviderCustomization) {
                arrayList.add((ProviderCustomization) included);
            }
        }
        return arrayList;
    }

    private static List<Usecase> extractUsecases(Identity.Relationships relationships, JsonApi.Included[] includedArr) {
        Usecase.CallDistribution callDistribution;
        JsonApi.Linkage[] linkageArr = (JsonApi.Linkage[]) JsonApi.Wrapper.unwrap(relationships.usecases);
        if (linkageArr == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (JsonApi.Linkage linkage : linkageArr) {
            if (linkage.is(Usecase.TYPE)) {
                arrayList.add(linkage.id());
            }
        }
        JsonApi.Linkage linkage2 = (JsonApi.Linkage) JsonApi.Wrapper.unwrap(relationships.guestProduct);
        JsonApi.Linkage linkage3 = (JsonApi.Linkage) JsonApi.Wrapper.unwrap(relationships.guestLanguage);
        JsonApi.Linkage linkage4 = (JsonApi.Linkage) JsonApi.Wrapper.unwrap(relationships.guestLocation);
        Product product = null;
        Language language = null;
        Location location = null;
        for (JsonApi.Included included : includedArr) {
            if (included instanceof Product) {
                if (linkage2 != null && product == null) {
                    Product product2 = (Product) included;
                    if (linkage2.matches(product2)) {
                        product = product2;
                    }
                }
            } else if (included instanceof Language) {
                if (linkage3 != null && language == null) {
                    Language language2 = (Language) included;
                    if (linkage3.matches(language2)) {
                        language = language2;
                    }
                }
            } else if ((included instanceof Location) && linkage4 != null && location == null) {
                Location location2 = (Location) included;
                if (linkage4.matches(location2)) {
                    location = location2;
                }
            }
        }
        Product.Relationships relationships2 = product != null ? product.relationships : null;
        JsonApi.Linkage linkage5 = relationships2 != null ? (JsonApi.Linkage) JsonApi.Wrapper.unwrap(relationships2.usecase) : null;
        if (linkage5 != null) {
            arrayList.add(linkage5.id());
        }
        ArrayList arrayList2 = new ArrayList();
        for (JsonApi.Included included2 : includedArr) {
            if (included2 instanceof Usecase) {
                Usecase usecase = (Usecase) included2;
                if (arrayList.contains(usecase.id) && (callDistribution = usecase.callDistribution()) != null) {
                    int i2 = AnonymousClass1.$SwitchMap$com$sightcall$universal$agent$Usecase$CallDistribution[callDistribution.ordinal()];
                    if (i2 == 2) {
                        arrayList2.add(usecase);
                    } else if (i2 == 3 && linkage5 != null && linkage5.matches(usecase)) {
                        String string = product.attributes.hashValue;
                        if (language != null || location != null) {
                            StringBuilder sbU = n00.u(string, ",");
                            sbU.append(language != null ? language.attributes.code : "-1");
                            StringBuilder sbU2 = n00.u(sbU.toString(), ",");
                            sbU2.append(location != null ? location.id : "-1");
                            string = sbU2.toString();
                        }
                        usecase.attributes.hashValue = string;
                        arrayList2.add(usecase);
                    }
                }
            }
        }
        return arrayList2;
    }
}
