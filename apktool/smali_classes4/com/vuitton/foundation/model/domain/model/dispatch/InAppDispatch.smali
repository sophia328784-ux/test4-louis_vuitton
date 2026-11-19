.class public final Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Companion;,
        Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Id;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0002\u0013\u0014BQ\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0001\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\u000b\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Id;",
        "id",
        "Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;",
        "dispatchLocale",
        "boLocaleId",
        "Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;",
        "resourceLocale",
        "",
        "order",
        "",
        "displayName",
        "name",
        "",
        "isECommerce",
        "flagUrl",
        "<init>",
        "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "Companion",
        "Id",
        "domain"
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
.field public static final q:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Companion;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Z

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/util/Locale;

.field public final n:Ljava/util/Locale;

.field public final o:Ljava/util/Locale;

.field public final p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->q:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;

    iput p5, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->e:I

    iput-object p6, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->g:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->h:Z

    iput-object p9, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->i:Ljava/lang/String;

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/DispatchRegionCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/DispatchRegionCode$Companion;

    iget-object p3, p2, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->j:Ljava/lang/String;

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->a:Ljava/util/List;

    iget-object p1, p2, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;

    sget-object p5, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;->EURO_LAND:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;

    if-ne p1, p5, :cond_0

    const-string p5, "EU"

    sget-object p6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p5, p6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object p5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p3, p5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    iput-object p5, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->k:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;->g()Ljava/util/Locale;

    move-result-object p6

    invoke-virtual {p6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p6

    const-string p7, "-"

    invoke-static {p6, p7, p5}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->l:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;->g()Ljava/util/Locale;

    move-result-object p5

    iput-object p5, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->m:Ljava/util/Locale;

    invoke-virtual {p4}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;->g()Ljava/util/Locale;

    move-result-object p4

    iput-object p4, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->n:Ljava/util/Locale;

    iget-object p4, p2, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;->a:Ljava/lang/String;

    iget-object p2, p2, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;->b:Ljava/lang/String;

    invoke-static {p4, p2, p3}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocalePartsKt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->o:Ljava/util/Locale;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->p:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    instance-of v0, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v0, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->a:Ljava/lang/String;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Id;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Id$Companion;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;

    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;

    invoke-virtual {v0, v1}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;

    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;

    if-eq v0, v1, :cond_5

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->e:I

    iget v1, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->e:I

    if-eq v0, v1, :cond_6

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    iget-boolean v0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->h:Z

    iget-boolean v1, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->h:Z

    if-eq v0, v1, :cond_9

    goto :goto_0

    :cond_9
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->i:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->i:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_a
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 3

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Id;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Id$Companion;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;

    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->c:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->e:I

    invoke-static {v0, v2, v1}, Ltr;->b(III)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->h:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->i:Ljava/lang/String;

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

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Id;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BoLocaleId(value="

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->c:Ljava/lang/String;

    const-string v3, ")"

    invoke-static {v1, v2, v3}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "InAppDispatch(id="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", dispatchLocale="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", boLocaleId="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", resourceLocale="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", order="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->e:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", displayName="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->f:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", name="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isECommerce="

    const-string v1, ", flagUrl="

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->g:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->h:Z

    invoke-static {v4, v0, v1, v2, v5}, Lpq0;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->i:Ljava/lang/String;

    invoke-static {p0, v3, v2}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
