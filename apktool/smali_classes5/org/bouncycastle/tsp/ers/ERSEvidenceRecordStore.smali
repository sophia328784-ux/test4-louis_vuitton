.class public Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/util/Store;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/bouncycastle/util/Store<",
        "Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private digCalc:Lorg/bouncycastle/operator/DigestCalculator;

.field private recordMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;",
            "Ljava/util/List<",
            "Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore;->recordMap:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->getArchiveTimeStamps()[Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v3, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->getDigestAlgorithmProvider()Lorg/bouncycastle/operator/DigestCalculatorProvider;

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getDigestAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    :cond_0
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getHashTreeLeaf()Lorg/bouncycastle/asn1/tsp/PartialHashtree;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/tsp/PartialHashtree;->getValues()[[B

    move-result-object v1

    array-length v4, v1

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    :goto_1
    array-length v4, v1

    if-eq v2, v4, :cond_1

    new-instance v4, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;

    aget-object v5, v1, v2

    invoke-direct {v4, v5}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;-><init>([B)V

    invoke-direct {p0, v4, v0}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore;->addRecord(Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance v1, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;

    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-static {v2, v3}, Lorg/bouncycastle/tsp/ers/ERSUtil;->computeNodeHash(Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/asn1/tsp/PartialHashtree;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;-><init>([B)V

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore;->addRecord(Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;)V

    goto :goto_0

    :cond_2
    new-instance v3, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;

    aget-object v1, v1, v2

    invoke-direct {v3, v1}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;-><init>([B)V

    invoke-direct {p0, v3, v0}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore;->addRecord(Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;)V

    goto :goto_0

    :cond_3
    new-instance v2, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getTimeStampDigestValue()[B

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;-><init>([B)V

    invoke-direct {p0, v2, v0}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore;->addRecord(Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private addRecord(Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore;->recordMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore;->recordMap:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object p0, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore;->recordMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/util/Selector<",
            "Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;",
            ">;)",
            "Ljava/util/Collection<",
            "Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/util/StoreException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordSelector;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    new-instance v0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;

    move-object v2, p1

    check-cast v2, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordSelector;

    invoke-virtual {v2}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordSelector;->getData()Lorg/bouncycastle/tsp/ers/ERSData;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lorg/bouncycastle/tsp/ers/ERSData;->getHash(Lorg/bouncycastle/operator/DigestCalculator;[B)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;-><init>([B)V

    iget-object p0, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore;->recordMap:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;

    invoke-interface {p1, v2}, Lorg/bouncycastle/util/Selector;->match(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_3
    if-nez p1, :cond_5

    new-instance p1, Ljava/util/HashSet;

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore;->recordMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(I)V

    iget-object p0, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore;->recordMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_2
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object p0, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore;->recordMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move v3, v1

    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_6

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Lorg/bouncycastle/util/Selector;->match(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_2
.end method
