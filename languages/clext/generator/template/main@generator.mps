<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f9f90a12-8bce-4ac9-843d-dbb10053ad43(clext.generator.template.main@generator)">
  <persistence version="9" />
  <languages>
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="0" />
    <use id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext" version="0" />
    <use id="9e21f221-0198-4fd2-9e2a-98ed24f96a9d" name="clext" version="-1" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="1" />
    <use id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal" version="0" />
    <use id="ed6d7656-532c-4bc2-81d1-af945aeb8280" name="jetbrains.mps.baseLanguage.blTypes" version="0" />
    <use id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" name="jetbrains.mps.lang.traceable" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="wj24" ref="r:bc91369f-0e46-4f15-a68c-b8c53851fe33(clext.runtime)" />
    <import index="qci9" ref="r:c5d990a3-db25-4c71-934a-fc9446e67297(clext.structure)" implicit="true" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <property id="1184950341882" name="topPriorityGroup" index="3$yP7D" />
        <child id="1200911492601" name="mappingLabel" index="2rTMjI" />
        <child id="1167328349397" name="reductionMappingRule" index="3acgRq" />
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
      </concept>
      <concept id="1177093525992" name="jetbrains.mps.lang.generator.structure.InlineTemplate_RuleConsequence" flags="lg" index="gft3U">
        <child id="1177093586806" name="templateNode" index="gfFT$" />
      </concept>
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1095672379244" name="jetbrains.mps.lang.generator.structure.TemplateFragment" flags="ng" index="raruj" />
      <concept id="1200911316486" name="jetbrains.mps.lang.generator.structure.MappingLabelDeclaration" flags="lg" index="2rT7sh">
        <reference id="1200911342686" name="sourceConcept" index="2rTdP9" />
        <reference id="1200913004646" name="targetConcept" index="2rZz_L" />
      </concept>
      <concept id="1167168920554" name="jetbrains.mps.lang.generator.structure.BaseMappingRule_Condition" flags="in" index="30G5F_" />
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <reference id="1200917515464" name="labelDeclaration" index="2sgKRv" />
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
        <child id="1167169362365" name="conditionFunction" index="30HLyM" />
      </concept>
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="ln" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" flags="lg" index="3lhOvk">
        <reference id="1167514355421" name="template" index="3lhOvi" />
      </concept>
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167770111131" name="jetbrains.mps.lang.generator.structure.ReferenceMacro_GetReferent" flags="in" index="3$xsQk" />
      <concept id="8900764248744213868" name="jetbrains.mps.lang.generator.structure.InlineTemplateWithContext_RuleConsequence" flags="lg" index="1Koe21">
        <child id="8900764248744213871" name="contentNode" index="1Koe22" />
      </concept>
      <concept id="1088761943574" name="jetbrains.mps.lang.generator.structure.ReferenceMacro" flags="ln" index="1ZhdrF">
        <child id="1167770376702" name="referentFunction" index="3$ytzL" />
      </concept>
    </language>
    <language id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext">
      <concept id="1216860049627" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOutputByLabelAndInput" flags="nn" index="1iwH70">
        <reference id="1216860049628" name="label" index="1iwH77" />
        <child id="1216860049632" name="inputNode" index="1iwH7V" />
      </concept>
      <concept id="1216860049635" name="jetbrains.mps.lang.generator.generationContext.structure.TemplateFunctionParameter_generationContext" flags="nn" index="1iwH7S" />
    </language>
    <language id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal">
      <concept id="1174914042989" name="jetbrains.mps.baseLanguageInternal.structure.InternalClassifierType" flags="in" index="2eloPW">
        <property id="1174914081067" name="fqClassName" index="2ely0U" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="propertyName" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="3364660638048049745" name="jetbrains.mps.lang.core.structure.LinkAttribute" flags="ng" index="A9Btn">
        <property id="1757699476691236116" name="linkRole" index="2qtEX8" />
        <property id="1341860900488019036" name="linkId" index="P3scX" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="bUwia" id="6puUMiQqegh">
    <property role="TrG5h" value="main" />
    <property role="3$yP7D" value="true" />
    <node concept="2rT7sh" id="6puUMiQr06n" role="2rTMjI">
      <property role="TrG5h" value="status" />
      <ref role="2rTdP9" to="qci9:6puUMiQqegl" resolve="Status" />
      <ref role="2rZz_L" to="tpee:fz12cDA" resolve="ClassConcept" />
    </node>
    <node concept="3aamgX" id="6puUMiQqZYZ" role="3acgRq">
      <ref role="30HIoZ" to="qci9:6puUMiQqego" resolve="StatusType" />
      <node concept="1Koe21" id="6puUMiQqZZ3" role="1lVwrX">
        <node concept="3uibUv" id="6puUMiQqZZd" role="1Koe22">
          <ref role="3uigEE" node="6puUMiQqZh7" resolve="map_Status" />
          <node concept="raruj" id="6puUMiQqZZu" role="lGtFl" />
          <node concept="1ZhdrF" id="6puUMiQqZZv" role="lGtFl">
            <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1107535904670/1107535924139" />
            <property role="2qtEX8" value="classifier" />
            <node concept="3$xsQk" id="6puUMiQqZZw" role="3$ytzL">
              <node concept="3clFbS" id="6puUMiQqZZx" role="2VODD2">
                <node concept="3clFbF" id="6puUMiQr00q" role="3cqZAp">
                  <node concept="2OqwBi" id="6puUMiQr02m" role="3clFbG">
                    <node concept="1iwH7S" id="6puUMiQr00p" role="2Oq$k0" />
                    <node concept="1iwH70" id="6puUMiQr03G" role="2OqNvi">
                      <ref role="1iwH77" node="6puUMiQr06n" resolve="status" />
                      <node concept="2OqwBi" id="6puUMiQr0d6" role="1iwH7V">
                        <node concept="30H73N" id="6puUMiQr091" role="2Oq$k0" />
                        <node concept="3TrEf2" id="6puUMiQr0k6" role="2OqNvi">
                          <ref role="3Tt5mk" to="qci9:6puUMiQqegr" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="6puUMiQriAM" role="30HLyM">
        <node concept="3clFbS" id="6puUMiQriAN" role="2VODD2">
          <node concept="3clFbF" id="6puUMiQriDT" role="3cqZAp">
            <node concept="3clFbT" id="6puUMiQriDS" role="3clFbG" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="6puUMiQriI1" role="3acgRq">
      <ref role="30HIoZ" to="qci9:6puUMiQqego" resolve="StatusType" />
      <node concept="gft3U" id="6puUMiQrq5N" role="1lVwrX">
        <node concept="2eloPW" id="3RwvUFpTNm4" role="gfFT$">
          <property role="2ely0U" value="StatusFqNAme" />
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          <node concept="17Uvod" id="3RwvUFpTNnJ" role="lGtFl">
            <property role="P4ACc" value="df345b11-b8c7-4213-ac66-48d2a9b75d88/1174914042989/1174914081067" />
            <property role="2qtEX9" value="fqClassName" />
            <node concept="3zFVjK" id="3RwvUFpTNnK" role="3zH0cK">
              <node concept="3clFbS" id="3RwvUFpTNnL" role="2VODD2">
                <node concept="3clFbF" id="3RwvUFpTNoZ" role="3cqZAp">
                  <node concept="2OqwBi" id="6puUMiQrq$J" role="3clFbG">
                    <node concept="2OqwBi" id="6puUMiQrqm0" role="2Oq$k0">
                      <node concept="30H73N" id="6puUMiQrqiv" role="2Oq$k0" />
                      <node concept="3TrEf2" id="6puUMiQrqsH" role="2OqNvi">
                        <ref role="3Tt5mk" to="qci9:6puUMiQqegr" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="6puUMiQrqE_" role="2OqNvi">
                      <ref role="37wK5l" to="tpcu:hEwIO9y" resolve="getFqName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3lhOvk" id="6puUMiQqZh5" role="3lj3bC">
      <ref role="30HIoZ" to="qci9:6puUMiQqegl" resolve="Status" />
      <ref role="3lhOvi" node="6puUMiQqZh7" resolve="map_Status" />
      <ref role="2sgKRv" node="6puUMiQr06n" resolve="status" />
    </node>
  </node>
  <node concept="312cEu" id="6puUMiQqZh7">
    <property role="TrG5h" value="map_Status" />
    <node concept="2tJIrI" id="6puUMiQqZXx" role="jymVt" />
    <node concept="3clFb_" id="6puUMiQqZX$" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="someOperation" />
      <node concept="3uibUv" id="6puUMiQqZXC" role="3clF45">
        <ref role="3uigEE" node="6puUMiQqZh7" resolve="map_Status" />
      </node>
      <node concept="3Tm1VV" id="6puUMiQqZXA" role="1B3o_S" />
      <node concept="3clFbS" id="6puUMiQqZXD" role="3clF47">
        <node concept="3clFbF" id="6puUMiQqZYJ" role="3cqZAp">
          <node concept="10Nm6u" id="6puUMiQqZYI" role="3clFbG" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="6puUMiQqZh8" role="1B3o_S" />
    <node concept="n94m4" id="6puUMiQqZh9" role="lGtFl">
      <ref role="n9lRv" to="qci9:6puUMiQqegl" resolve="Status" />
    </node>
    <node concept="3uibUv" id="6puUMiQqZWT" role="EKbjA">
      <ref role="3uigEE" to="wj24:6puUMiQqgRj" resolve="StatusInterface" />
      <node concept="3uibUv" id="6puUMiQqZXa" role="11_B2D">
        <ref role="3uigEE" node="6puUMiQqZh7" resolve="map_Status" />
      </node>
    </node>
    <node concept="17Uvod" id="6puUMiQr0qw" role="lGtFl">
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <property role="2qtEX9" value="name" />
      <node concept="3zFVjK" id="6puUMiQr0qx" role="3zH0cK">
        <node concept="3clFbS" id="6puUMiQr0qy" role="2VODD2">
          <node concept="3clFbF" id="6puUMiQr0sC" role="3cqZAp">
            <node concept="2OqwBi" id="6puUMiQr0vh" role="3clFbG">
              <node concept="30H73N" id="6puUMiQr0sB" role="2Oq$k0" />
              <node concept="3TrcHB" id="6puUMiQr0z$" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

