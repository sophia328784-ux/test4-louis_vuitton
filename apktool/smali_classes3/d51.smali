.class public final synthetic Ld51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/sightcall/universal/ui/UniversalDisplayName;

.field public final synthetic c:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Z

.field public final synthetic f:Lcom/sightcall/universal/ui/UniversalDisplayName$DisplayNameCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/sightcall/universal/ui/UniversalDisplayName;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;Ljava/util/List;ZLcom/sightcall/universal/ui/UniversalDisplayName$DisplayNameCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld51;->b:Lcom/sightcall/universal/ui/UniversalDisplayName;

    iput-object p2, p0, Ld51;->c:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;

    iput-object p3, p0, Ld51;->d:Ljava/util/List;

    iput-boolean p4, p0, Ld51;->e:Z

    iput-object p5, p0, Ld51;->f:Lcom/sightcall/universal/ui/UniversalDisplayName$DisplayNameCallback;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-boolean v3, p0, Ld51;->e:Z

    iget-object v4, p0, Ld51;->f:Lcom/sightcall/universal/ui/UniversalDisplayName$DisplayNameCallback;

    iget-object v0, p0, Ld51;->b:Lcom/sightcall/universal/ui/UniversalDisplayName;

    iget-object v1, p0, Ld51;->c:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;

    iget-object v2, p0, Ld51;->d:Ljava/util/List;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/sightcall/universal/ui/UniversalDisplayName;->a(Lcom/sightcall/universal/ui/UniversalDisplayName;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;Ljava/util/List;ZLcom/sightcall/universal/ui/UniversalDisplayName$DisplayNameCallback;Landroid/view/View;)V

    return-void
.end method
