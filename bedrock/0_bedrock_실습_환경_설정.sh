#실습 자료 다운로드 및 압축 해제
curl 'https://ws-assets-prod-iad-r-icn-ced060f0d38bc0b0.s3.ap-northeast-2.amazonaws.com/10435111-3e2e-48bb-acb4-0b5111d7638e/workshop.zip' --output workshop.zip
unzip workshop.zip

#실습에 필요한 종속성 설치
pip3 install -r c/ai-aws/workshop/setup/requirements.txt -U

#과정
unzip workshop.zip
Archive:  workshop.zip
   creating: workshop/                      
  inflating: __MACOSX/._workshop            
   creating: workshop/completed/            
  inflating: __MACOSX/workshop/._completed  
   creating: workshop/labs/                 
  inflating: __MACOSX/workshop/._labs       
  inflating: workshop/.DS_Store      
  inflating: __MACOSX/workshop/._.DS_Store
  inflating: workshop/LICENSE
  inflating: __MACOSX/workshop/._LICENSE
   creating: workshop/setup/
  inflating: __MACOSX/workshop/._setup  
   creating: workshop/sample_images/
  inflating: __MACOSX/workshop/._sample_images
   creating: workshop/data/
  inflating: __MACOSX/workshop/._data
   creating: workshop/completed/tool_use/
  inflating: __MACOSX/workshop/completed/._tool_use  
   creating: workshop/completed/image_variation/
  inflating: __MACOSX/workshop/completed/._image_variation
   creating: workshop/completed/image_extension/
  inflating: __MACOSX/workshop/completed/._image_extension
   creating: workshop/completed/image_masking/
  inflating: __MACOSX/workshop/completed/._image_masking
  inflating: workshop/completed/.DS_Store
  inflating: __MACOSX/workshop/completed/._.DS_Store
   creating: workshop/completed/guardrails/
  inflating: __MACOSX/workshop/completed/._guardrails  
   creating: workshop/completed/image_replacement/
  inflating: __MACOSX/workshop/completed/._image_replacement
   creating: workshop/completed/embeddings_search/
  inflating: __MACOSX/workshop/completed/._embeddings_search
   creating: workshop/completed/langchain/
  inflating: __MACOSX/workshop/completed/._langchain
   creating: workshop/completed/chatbot/
  inflating: __MACOSX/workshop/completed/._chatbot
   creating: workshop/completed/image_understanding/
  inflating: __MACOSX/workshop/completed/._image_understanding
   creating: workshop/completed/summarization/
  inflating: __MACOSX/workshop/completed/._summarization
   creating: workshop/completed/image_prompts/
  inflating: __MACOSX/workshop/completed/._image_prompts
   creating: workshop/completed/embedding/
  inflating: __MACOSX/workshop/completed/._embedding
   creating: workshop/completed/model_comparison/
  inflating: __MACOSX/workshop/completed/._model_comparison
   creating: workshop/completed/similarity/
  inflating: __MACOSX/workshop/completed/._similarity
   creating: workshop/completed/agent/
  inflating: __MACOSX/workshop/completed/._agent  
   creating: workshop/completed/rag/
  inflating: __MACOSX/workshop/completed/._rag
   creating: workshop/completed/image/
  inflating: __MACOSX/workshop/completed/._image
   creating: workshop/completed/recommendations/
  inflating: __MACOSX/workshop/completed/._recommendations
   creating: workshop/completed/simple_streamlit/
  inflating: __MACOSX/workshop/completed/._simple_streamlit
   creating: workshop/completed/streaming/
  inflating: __MACOSX/workshop/completed/._streaming
   creating: workshop/completed/image_to_image/
  inflating: __MACOSX/workshop/completed/._image_to_image  
   creating: workshop/completed/json/
  inflating: __MACOSX/workshop/completed/._json
   creating: workshop/completed/image_insertion/
  inflating: __MACOSX/workshop/completed/._image_insertion
   creating: workshop/completed/prompt/
  inflating: __MACOSX/workshop/completed/._prompt  
   creating: workshop/completed/csv/
  inflating: __MACOSX/workshop/completed/._csv
   creating: workshop/completed/params/
  inflating: __MACOSX/workshop/completed/._params
   creating: workshop/completed/intro_streaming/
  inflating: __MACOSX/workshop/completed/._intro_streaming
   creating: workshop/completed/api/
  inflating: __MACOSX/workshop/completed/._api
   creating: workshop/completed/image_background/
  inflating: __MACOSX/workshop/completed/._image_background
   creating: workshop/completed/templates/
  inflating: __MACOSX/workshop/completed/._templates
   creating: workshop/completed/rag_chatbot/
  inflating: __MACOSX/workshop/completed/._rag_chatbot
   creating: workshop/completed/text_playground/
  inflating: __MACOSX/workshop/completed/._text_playground
   creating: workshop/completed/text/
  inflating: __MACOSX/workshop/completed/._text
   creating: workshop/completed/image_search/
  inflating: __MACOSX/workshop/completed/._image_search
   creating: workshop/completed/showcase/
  inflating: __MACOSX/workshop/completed/._showcase  
   creating: workshop/completed/temperature/
  inflating: __MACOSX/workshop/completed/._temperature
   creating: workshop/completed/multimodal_chatbot/
  inflating: __MACOSX/workshop/completed/._multimodal_chatbot
   creating: workshop/completed/converse/
  inflating: __MACOSX/workshop/completed/._converse
   creating: workshop/completed/image_style_mixing/
  inflating: __MACOSX/workshop/completed/._image_style_mixing
   creating: workshop/labs/tool_use/
  inflating: __MACOSX/workshop/labs/._tool_use
   creating: workshop/labs/image_variation/
  inflating: __MACOSX/workshop/labs/._image_variation
   creating: workshop/labs/image_extension/
  inflating: __MACOSX/workshop/labs/._image_extension
   creating: workshop/labs/image_masking/
  inflating: __MACOSX/workshop/labs/._image_masking
  inflating: workshop/labs/.DS_Store
  inflating: __MACOSX/workshop/labs/._.DS_Store
   creating: workshop/labs/guardrails/
  inflating: __MACOSX/workshop/labs/._guardrails
   creating: workshop/labs/image_replacement/
  inflating: __MACOSX/workshop/labs/._image_replacement
   creating: workshop/labs/embeddings_search/
  inflating: __MACOSX/workshop/labs/._embeddings_search
   creating: workshop/labs/langchain/
  inflating: __MACOSX/workshop/labs/._langchain
   creating: workshop/labs/chatbot/
  inflating: __MACOSX/workshop/labs/._chatbot
   creating: workshop/labs/image_understanding/
  inflating: __MACOSX/workshop/labs/._image_understanding
   creating: workshop/labs/summarization/
  inflating: __MACOSX/workshop/labs/._summarization
   creating: workshop/labs/image_prompts/
  inflating: __MACOSX/workshop/labs/._image_prompts
   creating: workshop/labs/embedding/
  inflating: __MACOSX/workshop/labs/._embedding  
   creating: workshop/labs/model_comparison/
  inflating: __MACOSX/workshop/labs/._model_comparison
   creating: workshop/labs/similarity/
  inflating: __MACOSX/workshop/labs/._similarity
   creating: workshop/labs/agent/
  inflating: __MACOSX/workshop/labs/._agent  
   creating: workshop/labs/rag/
  inflating: __MACOSX/workshop/labs/._rag
   creating: workshop/labs/image/
  inflating: __MACOSX/workshop/labs/._image
   creating: workshop/labs/recommendations/
  inflating: __MACOSX/workshop/labs/._recommendations
   creating: workshop/labs/simple_streamlit/
  inflating: __MACOSX/workshop/labs/._simple_streamlit
   creating: workshop/labs/streaming/
  inflating: __MACOSX/workshop/labs/._streaming  
   creating: workshop/labs/image_to_image/
  inflating: __MACOSX/workshop/labs/._image_to_image
   creating: workshop/labs/json/
  inflating: __MACOSX/workshop/labs/._json
   creating: workshop/labs/image_insertion/
  inflating: __MACOSX/workshop/labs/._image_insertion
   creating: workshop/labs/csv/
  inflating: __MACOSX/workshop/labs/._csv
   creating: workshop/labs/params/
  inflating: __MACOSX/workshop/labs/._params  
   creating: workshop/labs/intro_streaming/
  inflating: __MACOSX/workshop/labs/._intro_streaming
   creating: workshop/labs/api/
  inflating: __MACOSX/workshop/labs/._api
   creating: workshop/labs/image_background/
  inflating: __MACOSX/workshop/labs/._image_background
   creating: workshop/labs/templates/
  inflating: __MACOSX/workshop/labs/._templates
   creating: workshop/labs/rag_chatbot/
  inflating: __MACOSX/workshop/labs/._rag_chatbot
   creating: workshop/labs/text_playground/
  inflating: __MACOSX/workshop/labs/._text_playground
   creating: workshop/labs/text/
  inflating: __MACOSX/workshop/labs/._text
   creating: workshop/labs/image_search/
  inflating: __MACOSX/workshop/labs/._image_search
   creating: workshop/labs/showcase/
  inflating: __MACOSX/workshop/labs/._showcase
   creating: workshop/labs/temperature/
  inflating: __MACOSX/workshop/labs/._temperature
   creating: workshop/labs/multimodal_chatbot/
  inflating: __MACOSX/workshop/labs/._multimodal_chatbot  
   creating: workshop/labs/converse/
  inflating: __MACOSX/workshop/labs/._converse
   creating: workshop/labs/image_style_mixing/
  inflating: __MACOSX/workshop/labs/._image_style_mixing
  inflating: workshop/setup/requirements.txt
  inflating: __MACOSX/workshop/setup/._requirements.txt
  inflating: workshop/setup/getproxyurl.py
  inflating: __MACOSX/workshop/setup/._getproxyurl.py
  inflating: workshop/sample_images/desk.jpg
  inflating: __MACOSX/workshop/sample_images/._desk.jpg
  inflating: workshop/sample_images/z1022.jpg  
  inflating: __MACOSX/workshop/sample_images/._z1022.jpg
  inflating: workshop/sample_images/z1036.jpg
  inflating: __MACOSX/workshop/sample_images/._z1036.jpg
  inflating: workshop/sample_images/z1037.jpg
  inflating: __MACOSX/workshop/sample_images/._z1037.jpg
  inflating: workshop/sample_images/z1023.jpg
  inflating: __MACOSX/workshop/sample_images/._z1023.jpg
  inflating: workshop/sample_images/z1035.jpg  
  inflating: __MACOSX/workshop/sample_images/._z1035.jpg
  inflating: workshop/sample_images/z1021.jpg
  inflating: __MACOSX/workshop/sample_images/._z1021.jpg  
  inflating: workshop/sample_images/z1009.jpg
  inflating: __MACOSX/workshop/sample_images/._z1009.jpg  
  inflating: workshop/sample_images/z1008.jpg
  inflating: __MACOSX/workshop/sample_images/._z1008.jpg  
  inflating: workshop/sample_images/z1020.jpg
  inflating: __MACOSX/workshop/sample_images/._z1020.jpg  
  inflating: workshop/sample_images/z1034.jpg
  inflating: __MACOSX/workshop/sample_images/._z1034.jpg
  inflating: workshop/sample_images/z1018.jpg
  inflating: __MACOSX/workshop/sample_images/._z1018.jpg
  inflating: workshop/sample_images/z1030.jpg  
  inflating: __MACOSX/workshop/sample_images/._z1030.jpg
  inflating: workshop/sample_images/z1024.jpg  
  inflating: __MACOSX/workshop/sample_images/._z1024.jpg
  inflating: workshop/sample_images/z1025.jpg
  inflating: __MACOSX/workshop/sample_images/._z1025.jpg  
  inflating: workshop/sample_images/z1031.jpg
  inflating: __MACOSX/workshop/sample_images/._z1031.jpg
  inflating: workshop/sample_images/z1019.jpg  
  inflating: __MACOSX/workshop/sample_images/._z1019.jpg
  inflating: workshop/sample_images/z1027.jpg
  inflating: __MACOSX/workshop/sample_images/._z1027.jpg
  inflating: workshop/sample_images/z1033.jpg
  inflating: __MACOSX/workshop/sample_images/._z1033.jpg
  inflating: workshop/sample_images/z1032.jpg  
  inflating: __MACOSX/workshop/sample_images/._z1032.jpg
  inflating: workshop/sample_images/z1026.jpg
  inflating: __MACOSX/workshop/sample_images/._z1026.jpg  
  inflating: workshop/sample_images/z1003.jpg
  inflating: __MACOSX/workshop/sample_images/._z1003.jpg
  inflating: workshop/sample_images/z1017.jpg  
  inflating: __MACOSX/workshop/sample_images/._z1017.jpg
  inflating: workshop/sample_images/z1016.jpg
  inflating: __MACOSX/workshop/sample_images/._z1016.jpg  
  inflating: workshop/sample_images/z1002.jpg
  inflating: __MACOSX/workshop/sample_images/._z1002.jpg
  inflating: workshop/sample_images/z1014.jpg  
  inflating: __MACOSX/workshop/sample_images/._z1014.jpg
  inflating: workshop/sample_images/z1028.jpg
  inflating: __MACOSX/workshop/sample_images/._z1028.jpg  
  inflating: workshop/sample_images/z1029.jpg
  inflating: __MACOSX/workshop/sample_images/._z1029.jpg
  inflating: workshop/sample_images/z1001.jpg
  inflating: __MACOSX/workshop/sample_images/._z1001.jpg  
  inflating: workshop/sample_images/z1015.jpg
  inflating: __MACOSX/workshop/sample_images/._z1015.jpg
  inflating: workshop/sample_images/z1039.png
  inflating: __MACOSX/workshop/sample_images/._z1039.png
  inflating: workshop/sample_images/z1011.jpg
  inflating: __MACOSX/workshop/sample_images/._z1011.jpg
  inflating: workshop/sample_images/z1005.jpg
  inflating: __MACOSX/workshop/sample_images/._z1005.jpg
  inflating: workshop/sample_images/z1004.jpg
  inflating: __MACOSX/workshop/sample_images/._z1004.jpg
  inflating: workshop/sample_images/z1010.jpg  
  inflating: __MACOSX/workshop/sample_images/._z1010.jpg
  inflating: workshop/sample_images/z1006.jpg
  inflating: __MACOSX/workshop/sample_images/._z1006.jpg
  inflating: workshop/sample_images/z1012.jpg  
  inflating: __MACOSX/workshop/sample_images/._z1012.jpg
  inflating: workshop/sample_images/z1013.jpg
  inflating: __MACOSX/workshop/sample_images/._z1013.jpg
  inflating: workshop/sample_images/z1007.jpg
  inflating: __MACOSX/workshop/sample_images/._z1007.jpg
  inflating: workshop/data/bedrock_faqs_with_embeddings.json
  inflating: __MACOSX/workshop/data/._bedrock_faqs_with_embeddings.json
  inflating: workshop/data/services.json
  inflating: __MACOSX/workshop/data/._services.json
  inflating: workshop/data/populate_image_collection.py  
  inflating: __MACOSX/workshop/data/._populate_image_collection.py
  inflating: workshop/data/test_queries.py
  inflating: __MACOSX/workshop/data/._test_queries.py
  inflating: workshop/data/services_with_embeddings.json  
  inflating: __MACOSX/workshop/data/._services_with_embeddings.json  
  inflating: workshop/data/bedrock_faqs.py  
  inflating: __MACOSX/workshop/data/._bedrock_faqs.py
  inflating: workshop/data/bedrock_faqs.json  
  inflating: __MACOSX/workshop/data/._bedrock_faqs.json
  inflating: workshop/data/images_with_embeddings.json
  inflating: __MACOSX/workshop/data/._images_with_embeddings.json
  inflating: workshop/data/prefetch_image_embeddings.py
  inflating: __MACOSX/workshop/data/._prefetch_image_embeddings.py
  inflating: workshop/data/prefetch_embeddings.py  
  inflating: __MACOSX/workshop/data/._prefetch_embeddings.py
  inflating: workshop/data/populate_collection.py
  inflating: __MACOSX/workshop/data/._populate_collection.py
  inflating: workshop/completed/tool_use/tool_use_challenge.py
  inflating: __MACOSX/workshop/completed/tool_use/._tool_use_challenge.py
  inflating: workshop/completed/tool_use/tool_use.py
  inflating: __MACOSX/workshop/completed/tool_use/._tool_use.py
  inflating: workshop/completed/tool_use/tool_use_kr.py
  inflating: __MACOSX/workshop/completed/tool_use/._tool_use_kr.py
  inflating: workshop/completed/image_variation/image_variation_lib.py
  inflating: __MACOSX/workshop/completed/image_variation/._image_variation_lib.py
  inflating: workshop/completed/image_variation/image_variation_app_kr.py  
  inflating: __MACOSX/workshop/completed/image_variation/._image_variation_app_kr.py
   creating: workshop/completed/image_variation/images/
  inflating: __MACOSX/workshop/completed/image_variation/._images
  inflating: workshop/completed/image_variation/image_variation_app.py
  inflating: __MACOSX/workshop/completed/image_variation/._image_variation_app.py
  inflating: workshop/completed/image_variation/image_variation_lib_kr.py
  inflating: __MACOSX/workshop/completed/image_variation/._image_variation_lib_kr.py  
  inflating: workshop/completed/image_extension/image_extension_lib_kr.py
  inflating: __MACOSX/workshop/completed/image_extension/._image_extension_lib_kr.py
   creating: workshop/completed/image_extension/images/
  inflating: __MACOSX/workshop/completed/image_extension/._images
  inflating: workshop/completed/image_extension/image_extension_lib.py  
  inflating: __MACOSX/workshop/completed/image_extension/._image_extension_lib.py
  inflating: workshop/completed/image_extension/image_extension_app.py
  inflating: __MACOSX/workshop/completed/image_extension/._image_extension_app.py
  inflating: workshop/completed/image_extension/image_extension_app_kr.py
  inflating: __MACOSX/workshop/completed/image_extension/._image_extension_app_kr.py
   creating: workshop/completed/image_masking/images/
  inflating: __MACOSX/workshop/completed/image_masking/._images
  inflating: workshop/completed/image_masking/image_masking_lib.py
  inflating: __MACOSX/workshop/completed/image_masking/._image_masking_lib.py  
  inflating: workshop/completed/image_masking/image_masking_app_kr.py
  inflating: __MACOSX/workshop/completed/image_masking/._image_masking_app_kr.py
  inflating: workshop/completed/image_masking/image_masking_lib_kr.py
  inflating: __MACOSX/workshop/completed/image_masking/._image_masking_lib_kr.py  
  inflating: workshop/completed/image_masking/image_masking_app.py
  inflating: __MACOSX/workshop/completed/image_masking/._image_masking_app.py
  inflating: workshop/completed/guardrails/test_basic.py
  inflating: __MACOSX/workshop/completed/guardrails/._test_basic.py
  inflating: workshop/completed/guardrails/test_completions_tagging.py  
  inflating: __MACOSX/workshop/completed/guardrails/._test_completions_tagging.py
  inflating: workshop/completed/guardrails/guardrails_app.py
  inflating: __MACOSX/workshop/completed/guardrails/._guardrails_app.py
  inflating: workshop/completed/guardrails/create_pii_guardrail.py  
  inflating: __MACOSX/workshop/completed/guardrails/._create_pii_guardrail.py
  inflating: workshop/completed/guardrails/test_helper.py
  inflating: __MACOSX/workshop/completed/guardrails/._test_helper.py
  inflating: workshop/completed/guardrails/test_without_tagging.py  
  inflating: __MACOSX/workshop/completed/guardrails/._test_without_tagging.py
  inflating: workshop/completed/guardrails/guardrails_lib.py
  inflating: __MACOSX/workshop/completed/guardrails/._guardrails_lib.py
  inflating: workshop/completed/guardrails/test_trace.py
  inflating: __MACOSX/workshop/completed/guardrails/._test_trace.py
  inflating: workshop/completed/guardrails/test_messages_tagging.py
  inflating: __MACOSX/workshop/completed/guardrails/._test_messages_tagging.py
  inflating: workshop/completed/guardrails/create_content_guardrail.py
  inflating: __MACOSX/workshop/completed/guardrails/._create_content_guardrail.py  
  inflating: workshop/completed/guardrails/create_guardrail.py
  inflating: __MACOSX/workshop/completed/guardrails/._create_guardrail.py
  inflating: workshop/completed/guardrails/create_attack_guardrail.py
  inflating: __MACOSX/workshop/completed/guardrails/._create_attack_guardrail.py  
  inflating: workshop/completed/image_replacement/image_replacement_app.py
  inflating: __MACOSX/workshop/completed/image_replacement/._image_replacement_app.py
  inflating: workshop/completed/image_replacement/image_replacement_lib_kr.py
  inflating: __MACOSX/workshop/completed/image_replacement/._image_replacement_lib_kr.py  
   creating: workshop/completed/image_replacement/images/
  inflating: __MACOSX/workshop/completed/image_replacement/._images
  inflating: workshop/completed/image_replacement/image_replacement_lib.py
  inflating: __MACOSX/workshop/completed/image_replacement/._image_replacement_lib.py
  inflating: workshop/completed/image_replacement/image_replacement_app_kr.py  
  inflating: __MACOSX/workshop/completed/image_replacement/._image_replacement_app_kr.py
  inflating: workshop/completed/embeddings_search/embeddings_search_lib_kr.py
  inflating: __MACOSX/workshop/completed/embeddings_search/._embeddings_search_lib_kr.py
  inflating: workshop/completed/embeddings_search/embeddings_search_app.py  
  inflating: __MACOSX/workshop/completed/embeddings_search/._embeddings_search_app.py
  inflating: workshop/completed/embeddings_search/embeddings_search_lib.py
  inflating: __MACOSX/workshop/completed/embeddings_search/._embeddings_search_lib.py
  inflating: workshop/completed/embeddings_search/embeddings_search_app_kr.py  
  inflating: __MACOSX/workshop/completed/embeddings_search/._embeddings_search_app_kr.py
  inflating: workshop/completed/langchain/bedrock_langchain_kr.py
  inflating: __MACOSX/workshop/completed/langchain/._bedrock_langchain_kr.py
  inflating: workshop/completed/langchain/bedrock_langchain.py  
  inflating: __MACOSX/workshop/completed/langchain/._bedrock_langchain.py
  inflating: workshop/completed/chatbot/chatbot_lib.py
  inflating: __MACOSX/workshop/completed/chatbot/._chatbot_lib.py
  inflating: workshop/completed/chatbot/chatbot_app_kr.py  
  inflating: __MACOSX/workshop/completed/chatbot/._chatbot_app_kr.py
  inflating: workshop/completed/chatbot/chatbot_app.py
  inflating: __MACOSX/workshop/completed/chatbot/._chatbot_app.py
  inflating: workshop/completed/chatbot/chatbot_lib_kr.py
  inflating: __MACOSX/workshop/completed/chatbot/._chatbot_lib_kr.py
   creating: workshop/completed/image_understanding/images/
  inflating: __MACOSX/workshop/completed/image_understanding/._images
  inflating: workshop/completed/image_understanding/image_understanding_app.py  
  inflating: __MACOSX/workshop/completed/image_understanding/._image_understanding_app.py
  inflating: workshop/completed/image_understanding/image_understanding_app_kr.py
  inflating: __MACOSX/workshop/completed/image_understanding/._image_understanding_app_kr.py
  inflating: workshop/completed/image_understanding/image_understanding_lib_kr.py  
  inflating: __MACOSX/workshop/completed/image_understanding/._image_understanding_lib_kr.py
  inflating: workshop/completed/image_understanding/image_understanding_lib.py
  inflating: __MACOSX/workshop/completed/image_understanding/._image_understanding_lib.py
  inflating: workshop/completed/summarization/summarization_app.py
  inflating: __MACOSX/workshop/completed/summarization/._summarization_app.py
  inflating: workshop/completed/summarization/summarization_lib_kr.py
  inflating: __MACOSX/workshop/completed/summarization/._summarization_lib_kr.py
  inflating: workshop/completed/summarization/.DS_Store  
  inflating: __MACOSX/workshop/completed/summarization/._.DS_Store
  inflating: workshop/completed/summarization/summarization_lib.py
  inflating: __MACOSX/workshop/completed/summarization/._summarization_lib.py  
  inflating: workshop/completed/summarization/summarization_app_kr.py
  inflating: __MACOSX/workshop/completed/summarization/._summarization_app_kr.py
  inflating: workshop/completed/summarization/amazon-leadership-principles-070621-us.pdf
  inflating: __MACOSX/workshop/completed/summarization/._amazon-leadership-principles-070621-us.pdf  
  inflating: workshop/completed/image_prompts/image_prompts_lib.py
  inflating: __MACOSX/workshop/completed/image_prompts/._image_prompts_lib.py
  inflating: workshop/completed/image_prompts/image_prompts_app_kr.py
  inflating: __MACOSX/workshop/completed/image_prompts/._image_prompts_app_kr.py
  inflating: workshop/completed/image_prompts/image_prompts_app.py
  inflating: __MACOSX/workshop/completed/image_prompts/._image_prompts_app.py
  inflating: workshop/completed/image_prompts/image_prompts_lib_kr.py
  inflating: __MACOSX/workshop/completed/image_prompts/._image_prompts_lib_kr.py
  inflating: workshop/completed/embedding/bedrock_embedding.py
  inflating: __MACOSX/workshop/completed/embedding/._bedrock_embedding.py
  inflating: workshop/completed/embedding/items.txt
  inflating: __MACOSX/workshop/completed/embedding/._items.txt  
  inflating: workshop/completed/model_comparison/model_comparison_app.py
  inflating: __MACOSX/workshop/completed/model_comparison/._model_comparison_app.py
  inflating: workshop/completed/model_comparison/model_comparison_lib.py
  inflating: __MACOSX/workshop/completed/model_comparison/._model_comparison_lib.py  
  inflating: workshop/completed/similarity/services.json
  inflating: __MACOSX/workshop/completed/similarity/._services.json
  inflating: workshop/completed/similarity/similarity_lib.py
  inflating: __MACOSX/workshop/completed/similarity/._similarity_lib.py  
  inflating: workshop/completed/similarity/similarity_app.py
  inflating: __MACOSX/workshop/completed/similarity/._similarity_app.py
  inflating: workshop/completed/agent/prompt-chaining.py
  inflating: __MACOSX/workshop/completed/agent/._prompt-chaining.py  
  inflating: workshop/completed/agent/util.py
  inflating: __MACOSX/workshop/completed/agent/._util.py
  inflating: workshop/completed/agent/evaluator-optimizer.py
  inflating: __MACOSX/workshop/completed/agent/._evaluator-optimizer.py
  inflating: workshop/completed/agent/parallelization.py  
  inflating: __MACOSX/workshop/completed/agent/._parallelization.py
  inflating: workshop/completed/agent/routing.py
  inflating: __MACOSX/workshop/completed/agent/._routing.py
  inflating: workshop/completed/rag/rag_lib.py  
  inflating: __MACOSX/workshop/completed/rag/._rag_lib.py
  inflating: workshop/completed/rag/rag_lib_kr.py
  inflating: __MACOSX/workshop/completed/rag/._rag_lib_kr.py
  inflating: workshop/completed/rag/rag_app_kr.py  
  inflating: __MACOSX/workshop/completed/rag/._rag_app_kr.py
  inflating: workshop/completed/rag/rag_app.py
  inflating: __MACOSX/workshop/completed/rag/._rag_app.py  
  inflating: workshop/completed/image/image_lib_kr.py
  inflating: __MACOSX/workshop/completed/image/._image_lib_kr.py
  inflating: workshop/completed/image/image_lib.py
  inflating: __MACOSX/workshop/completed/image/._image_lib.py
  inflating: workshop/completed/image/image_app_kr.py
  inflating: __MACOSX/workshop/completed/image/._image_app_kr.py
  inflating: workshop/completed/image/image_app.py  
  inflating: __MACOSX/workshop/completed/image/._image_app.py
  inflating: workshop/completed/recommendations/recommendations_lib.py
  inflating: __MACOSX/workshop/completed/recommendations/._recommendations_lib.py
  inflating: workshop/completed/recommendations/recommendations_app_kr.py  
  inflating: __MACOSX/workshop/completed/recommendations/._recommendations_app_kr.py
  inflating: workshop/completed/recommendations/recommendations_lib_kr.py
  inflating: __MACOSX/workshop/completed/recommendations/._recommendations_lib_kr.py
  inflating: workshop/completed/recommendations/recommendations_app.py  
  inflating: __MACOSX/workshop/completed/recommendations/._recommendations_app.py
  inflating: workshop/completed/simple_streamlit/simple_streamlit_app_kr.py
  inflating: __MACOSX/workshop/completed/simple_streamlit/._simple_streamlit_app_kr.py
  inflating: workshop/completed/simple_streamlit/simple_streamlit_app.py
  inflating: __MACOSX/workshop/completed/simple_streamlit/._simple_streamlit_app.py  
  inflating: workshop/completed/streaming/streaming_app_kr.py
  inflating: __MACOSX/workshop/completed/streaming/._streaming_app_kr.py
  inflating: workshop/completed/streaming/streaming_lib.py
  inflating: __MACOSX/workshop/completed/streaming/._streaming_lib.py  
  inflating: workshop/completed/streaming/streaming_lib_kr.py
  inflating: __MACOSX/workshop/completed/streaming/._streaming_lib_kr.py
  inflating: workshop/completed/streaming/streaming_app.py
  inflating: __MACOSX/workshop/completed/streaming/._streaming_app.py  
  inflating: workshop/completed/image_to_image/image_to_image_lib_kr.py
  inflating: __MACOSX/workshop/completed/image_to_image/._image_to_image_lib_kr.py
  inflating: workshop/completed/image_to_image/image_to_image_app.py
  inflating: __MACOSX/workshop/completed/image_to_image/._image_to_image_app.py
  inflating: workshop/completed/image_to_image/image_to_image_app_kr.py
  inflating: __MACOSX/workshop/completed/image_to_image/._image_to_image_app_kr.py
  inflating: workshop/completed/image_to_image/image1.png
  inflating: __MACOSX/workshop/completed/image_to_image/._image1.png
  inflating: workshop/completed/image_to_image/image_to_image_lib.py
  inflating: __MACOSX/workshop/completed/image_to_image/._image_to_image_lib.py
  inflating: workshop/completed/json/json_lib_kr.py  
  inflating: __MACOSX/workshop/completed/json/._json_lib_kr.py
  inflating: workshop/completed/json/json_app.py
  inflating: __MACOSX/workshop/completed/json/._json_app.py
  inflating: workshop/completed/json/json_app_kr.py
  inflating: __MACOSX/workshop/completed/json/._json_app_kr.py
  inflating: workshop/completed/json/json_lib.py
  inflating: __MACOSX/workshop/completed/json/._json_lib.py
  inflating: workshop/completed/image_insertion/image_insertion_lib_kr.py
  inflating: __MACOSX/workshop/completed/image_insertion/._image_insertion_lib_kr.py  
  inflating: workshop/completed/image_insertion/image_insertion_lib.py
  inflating: __MACOSX/workshop/completed/image_insertion/._image_insertion_lib.py  
   creating: workshop/completed/image_insertion/images/
  inflating: __MACOSX/workshop/completed/image_insertion/._images
  inflating: workshop/completed/image_insertion/image_insertion_app.py
  inflating: __MACOSX/workshop/completed/image_insertion/._image_insertion_app.py  
  inflating: workshop/completed/image_insertion/image_insertion_app_kr.py
  inflating: __MACOSX/workshop/completed/image_insertion/._image_insertion_app_kr.py
  inflating: workshop/completed/prompt/prompt_app.py
  inflating: __MACOSX/workshop/completed/prompt/._prompt_app.py  
  inflating: workshop/completed/prompt/analysis_negative.txt
  inflating: __MACOSX/workshop/completed/prompt/._analysis_negative.txt
  inflating: workshop/completed/prompt/analysis_positive.txt
  inflating: __MACOSX/workshop/completed/prompt/._analysis_positive.txt  
  inflating: workshop/completed/prompt/prompt_lib.py
  inflating: __MACOSX/workshop/completed/prompt/._prompt_lib.py
  inflating: workshop/completed/prompt/summarization_content.txt
  inflating: __MACOSX/workshop/completed/prompt/._summarization_content.txt
  inflating: workshop/completed/prompt/basics.txt
  inflating: __MACOSX/workshop/completed/prompt/._basics.txt
  inflating: workshop/completed/prompt/qa.txt
  inflating: __MACOSX/workshop/completed/prompt/._qa.txt
  inflating: workshop/completed/csv/csv_app.py
  inflating: __MACOSX/workshop/completed/csv/._csv_app.py
  inflating: workshop/completed/csv/csv_app_kr.py  
  inflating: __MACOSX/workshop/completed/csv/._csv_app_kr.py
  inflating: workshop/completed/csv/csv_lib_kr.py
  inflating: __MACOSX/workshop/completed/csv/._csv_lib_kr.py
  inflating: workshop/completed/csv/csv_lib.py
  inflating: __MACOSX/workshop/completed/csv/._csv_lib.py  
  inflating: workshop/completed/params/params_kr.py
  inflating: __MACOSX/workshop/completed/params/._params_kr.py
  inflating: workshop/completed/params/params.py  
  inflating: __MACOSX/workshop/completed/params/._params.py
  inflating: workshop/completed/intro_streaming/intro_streaming_kr.py
  inflating: __MACOSX/workshop/completed/intro_streaming/._intro_streaming_kr.py
  inflating: workshop/completed/intro_streaming/intro_streaming.py
  inflating: __MACOSX/workshop/completed/intro_streaming/._intro_streaming.py
  inflating: workshop/completed/api/bedrock_api.py
  inflating: __MACOSX/workshop/completed/api/._bedrock_api.py
  inflating: workshop/completed/api/bedrock_api_kr.py
  inflating: __MACOSX/workshop/completed/api/._bedrock_api_kr.py
  inflating: workshop/completed/image_background/image_background_app.py
  inflating: __MACOSX/workshop/completed/image_background/._image_background_app.py
   creating: workshop/completed/image_background/images/
  inflating: __MACOSX/workshop/completed/image_background/._images  
  inflating: workshop/completed/image_background/image_background_lib_kr.py
  inflating: __MACOSX/workshop/completed/image_background/._image_background_lib_kr.py
  inflating: workshop/completed/image_background/image_background_lib.py
  inflating: __MACOSX/workshop/completed/image_background/._image_background_lib.py  
  inflating: workshop/completed/image_background/image_background_app_kr.py
  inflating: __MACOSX/workshop/completed/image_background/._image_background_app_kr.py
  inflating: workshop/completed/templates/templates_app.py
  inflating: __MACOSX/workshop/completed/templates/._templates_app.py  
  inflating: workshop/completed/templates/templates_app_kr.py
  inflating: __MACOSX/workshop/completed/templates/._templates_app_kr.py
  inflating: workshop/completed/templates/templates_lib_kr.py
  inflating: __MACOSX/workshop/completed/templates/._templates_lib_kr.py
  inflating: workshop/completed/templates/templates_lib.py
  inflating: __MACOSX/workshop/completed/templates/._templates_lib.py
  inflating: workshop/completed/rag_chatbot/rag_chatbot_lib.py
  inflating: __MACOSX/workshop/completed/rag_chatbot/._rag_chatbot_lib.py  
  inflating: workshop/completed/rag_chatbot/rag_chatbot_app_kr.py
  inflating: __MACOSX/workshop/completed/rag_chatbot/._rag_chatbot_app_kr.py
  inflating: workshop/completed/rag_chatbot/rag_chatbot_lib_kr.py
  inflating: __MACOSX/workshop/completed/rag_chatbot/._rag_chatbot_lib_kr.py
  inflating: workshop/completed/rag_chatbot/rag_chatbot_app.py  
  inflating: __MACOSX/workshop/completed/rag_chatbot/._rag_chatbot_app.py
  inflating: workshop/completed/text_playground/text_playground_app_kr.py
  inflating: __MACOSX/workshop/completed/text_playground/._text_playground_app_kr.py  
  inflating: workshop/completed/text_playground/text_playground_app.py
  inflating: __MACOSX/workshop/completed/text_playground/._text_playground_app.py  
  inflating: workshop/completed/text_playground/text_playground_lib.py
  inflating: __MACOSX/workshop/completed/text_playground/._text_playground_lib.py  
  inflating: workshop/completed/text_playground/text_playground_lib_kr.py
  inflating: __MACOSX/workshop/completed/text_playground/._text_playground_lib_kr.py
  inflating: workshop/completed/text/text_lib.py  
  inflating: __MACOSX/workshop/completed/text/._text_lib.py
  inflating: workshop/completed/text/text_lib_kr.py
  inflating: __MACOSX/workshop/completed/text/._text_lib_kr.py  
  inflating: workshop/completed/text/text_app.py
  inflating: __MACOSX/workshop/completed/text/._text_app.py
  inflating: workshop/completed/text/text_app_kr.py
  inflating: __MACOSX/workshop/completed/text/._text_app_kr.py  
  inflating: workshop/completed/image_search/image_search_lib_kr.py
  inflating: __MACOSX/workshop/completed/image_search/._image_search_lib_kr.py
   creating: workshop/completed/image_search/images/
  inflating: __MACOSX/workshop/completed/image_search/._images  
  inflating: workshop/completed/image_search/image_search_lib.py
  inflating: __MACOSX/workshop/completed/image_search/._image_search_lib.py
  inflating: workshop/completed/image_search/image_search_app_kr.py
  inflating: __MACOSX/workshop/completed/image_search/._image_search_app_kr.py  
  inflating: workshop/completed/image_search/image_search_app.py
  inflating: __MACOSX/workshop/completed/image_search/._image_search_app.py
  inflating: workshop/completed/showcase/showcase_lib_kr.py  
  inflating: __MACOSX/workshop/completed/showcase/._showcase_lib_kr.py
  inflating: workshop/completed/showcase/showcase_lib.py
  inflating: __MACOSX/workshop/completed/showcase/._showcase_lib.py  
  inflating: workshop/completed/showcase/showcase_examples_kr.py
  inflating: __MACOSX/workshop/completed/showcase/._showcase_examples_kr.py
  inflating: workshop/completed/showcase/showcase_app.py  
  inflating: __MACOSX/workshop/completed/showcase/._showcase_app.py
  inflating: workshop/completed/showcase/showcase_app_kr.py
  inflating: __MACOSX/workshop/completed/showcase/._showcase_app_kr.py
  inflating: workshop/completed/showcase/showcase_examples.py  
  inflating: __MACOSX/workshop/completed/showcase/._showcase_examples.py
  inflating: workshop/completed/temperature/temperature_kr.py
  inflating: __MACOSX/workshop/completed/temperature/._temperature_kr.py  
  inflating: workshop/completed/temperature/temperature.py
  inflating: __MACOSX/workshop/completed/temperature/._temperature.py
  inflating: workshop/completed/multimodal_chatbot/multimodal_chatbot_app.py
  inflating: __MACOSX/workshop/completed/multimodal_chatbot/._multimodal_chatbot_app.py
   creating: workshop/completed/multimodal_chatbot/images/
  inflating: __MACOSX/workshop/completed/multimodal_chatbot/._images
  inflating: workshop/completed/multimodal_chatbot/multimodal_chatbot_lib_kr.py  
  inflating: __MACOSX/workshop/completed/multimodal_chatbot/._multimodal_chatbot_lib_kr.py
  inflating: workshop/completed/multimodal_chatbot/multimodal_chatbot_lib.py
  inflating: __MACOSX/workshop/completed/multimodal_chatbot/._multimodal_chatbot_lib.py  
  inflating: workshop/completed/multimodal_chatbot/multimodal_chatbot_app_kr.py
  inflating: __MACOSX/workshop/completed/multimodal_chatbot/._multimodal_chatbot_app_kr.py
  inflating: workshop/completed/converse/image.webp
  inflating: __MACOSX/workshop/completed/converse/._image.webp
  inflating: workshop/completed/converse/converse_api.py
  inflating: __MACOSX/workshop/completed/converse/._converse_api.py
  inflating: workshop/completed/converse/converse_api_kr.py  
  inflating: __MACOSX/workshop/completed/converse/._converse_api_kr.py
  inflating: workshop/completed/image_style_mixing/image_style_mixing_app.py  
  inflating: __MACOSX/workshop/completed/image_style_mixing/._image_style_mixing_app.py
  inflating: workshop/completed/image_style_mixing/.DS_Store
  inflating: __MACOSX/workshop/completed/image_style_mixing/._.DS_Store
  inflating: workshop/completed/image_style_mixing/image_style_mixing_lib_kr.py  
  inflating: __MACOSX/workshop/completed/image_style_mixing/._image_style_mixing_lib_kr.py
   creating: workshop/completed/image_style_mixing/images/
  inflating: __MACOSX/workshop/completed/image_style_mixing/._images
  inflating: workshop/completed/image_style_mixing/image_style_mixing_lib.py
  inflating: __MACOSX/workshop/completed/image_style_mixing/._image_style_mixing_lib.py
  inflating: workshop/completed/image_style_mixing/image_style_mixing_app_kr.py
  inflating: __MACOSX/workshop/completed/image_style_mixing/._image_style_mixing_app_kr.py
 extracting: workshop/labs/tool_use/tool_use_challenge.py
  inflating: __MACOSX/workshop/labs/tool_use/._tool_use_challenge.py  
 extracting: workshop/labs/tool_use/tool_use.py
  inflating: __MACOSX/workshop/labs/tool_use/._tool_use.py  
 extracting: workshop/labs/tool_use/tool_use_kr.py
  inflating: __MACOSX/workshop/labs/tool_use/._tool_use_kr.py  
 extracting: workshop/labs/image_variation/image_variation_lib.py
  inflating: __MACOSX/workshop/labs/image_variation/._image_variation_lib.py
 extracting: workshop/labs/image_variation/image_variation_app_kr.py  
  inflating: __MACOSX/workshop/labs/image_variation/._image_variation_app_kr.py
   creating: workshop/labs/image_variation/images/
  inflating: __MACOSX/workshop/labs/image_variation/._images  
 extracting: workshop/labs/image_variation/image_variation_app.py
  inflating: __MACOSX/workshop/labs/image_variation/._image_variation_app.py
 extracting: workshop/labs/image_variation/image_variation_lib_kr.py
  inflating: __MACOSX/workshop/labs/image_variation/._image_variation_lib_kr.py  
 extracting: workshop/labs/image_extension/image_extension_lib_kr.py
  inflating: __MACOSX/workshop/labs/image_extension/._image_extension_lib_kr.py
   creating: workshop/labs/image_extension/images/
  inflating: __MACOSX/workshop/labs/image_extension/._images
 extracting: workshop/labs/image_extension/image_extension_lib.py
  inflating: __MACOSX/workshop/labs/image_extension/._image_extension_lib.py
 extracting: workshop/labs/image_extension/image_extension_app.py
  inflating: __MACOSX/workshop/labs/image_extension/._image_extension_app.py
 extracting: workshop/labs/image_extension/image_extension_app_kr.py  
  inflating: __MACOSX/workshop/labs/image_extension/._image_extension_app_kr.py
   creating: workshop/labs/image_masking/images/
  inflating: __MACOSX/workshop/labs/image_masking/._images
 extracting: workshop/labs/image_masking/image_masking_lib.py
  inflating: __MACOSX/workshop/labs/image_masking/._image_masking_lib.py  
 extracting: workshop/labs/image_masking/image_masking_app_kr.py
  inflating: __MACOSX/workshop/labs/image_masking/._image_masking_app_kr.py
 extracting: workshop/labs/image_masking/image_masking_lib_kr.py
  inflating: __MACOSX/workshop/labs/image_masking/._image_masking_lib_kr.py
 extracting: workshop/labs/image_masking/image_masking_app.py
  inflating: __MACOSX/workshop/labs/image_masking/._image_masking_app.py
 extracting: workshop/labs/guardrails/test_basic.py
  inflating: __MACOSX/workshop/labs/guardrails/._test_basic.py
 extracting: workshop/labs/guardrails/test_completions_tagging.py  
  inflating: __MACOSX/workshop/labs/guardrails/._test_completions_tagging.py
  inflating: workshop/labs/guardrails/guardrails_app.py
  inflating: __MACOSX/workshop/labs/guardrails/._guardrails_app.py
  inflating: workshop/labs/guardrails/test_helper.py
  inflating: __MACOSX/workshop/labs/guardrails/._test_helper.py
 extracting: workshop/labs/guardrails/test_without_tagging.py
  inflating: __MACOSX/workshop/labs/guardrails/._test_without_tagging.py
  inflating: workshop/labs/guardrails/guardrails_lib.py
  inflating: __MACOSX/workshop/labs/guardrails/._guardrails_lib.py  
 extracting: workshop/labs/guardrails/test_trace.py
  inflating: __MACOSX/workshop/labs/guardrails/._test_trace.py
 extracting: workshop/labs/guardrails/test_messages_tagging.py
  inflating: __MACOSX/workshop/labs/guardrails/._test_messages_tagging.py  
 extracting: workshop/labs/guardrails/create_guardrail.py
  inflating: __MACOSX/workshop/labs/guardrails/._create_guardrail.py
 extracting: workshop/labs/image_replacement/image_replacement_app.py
  inflating: __MACOSX/workshop/labs/image_replacement/._image_replacement_app.py  
 extracting: workshop/labs/image_replacement/image_replacement_lib_kr.py
  inflating: __MACOSX/workshop/labs/image_replacement/._image_replacement_lib_kr.py
   creating: workshop/labs/image_replacement/images/
  inflating: __MACOSX/workshop/labs/image_replacement/._images
 extracting: workshop/labs/image_replacement/image_replacement_lib.py  
  inflating: __MACOSX/workshop/labs/image_replacement/._image_replacement_lib.py
 extracting: workshop/labs/image_replacement/image_replacement_app_kr.py
  inflating: __MACOSX/workshop/labs/image_replacement/._image_replacement_app_kr.py
 extracting: workshop/labs/embeddings_search/embeddings_search_lib_kr.py  
  inflating: __MACOSX/workshop/labs/embeddings_search/._embeddings_search_lib_kr.py
 extracting: workshop/labs/embeddings_search/embeddings_search_app.py
  inflating: __MACOSX/workshop/labs/embeddings_search/._embeddings_search_app.py
   creating: workshop/labs/embeddings_search/.ipynb_checkpoints/
  inflating: __MACOSX/workshop/labs/embeddings_search/._.ipynb_checkpoints  
 extracting: workshop/labs/embeddings_search/embeddings_search_lib.py
  inflating: __MACOSX/workshop/labs/embeddings_search/._embeddings_search_lib.py
 extracting: workshop/labs/embeddings_search/embeddings_search_app_kr.py
  inflating: __MACOSX/workshop/labs/embeddings_search/._embeddings_search_app_kr.py  
 extracting: workshop/labs/langchain/bedrock_langchain_kr.py
  inflating: __MACOSX/workshop/labs/langchain/._bedrock_langchain_kr.py
 extracting: workshop/labs/langchain/bedrock_langchain.py
  inflating: __MACOSX/workshop/labs/langchain/._bedrock_langchain.py
 extracting: workshop/labs/chatbot/chatbot_lib.py
  inflating: __MACOSX/workshop/labs/chatbot/._chatbot_lib.py
 extracting: workshop/labs/chatbot/chatbot_app_kr.py
  inflating: __MACOSX/workshop/labs/chatbot/._chatbot_app_kr.py  
 extracting: workshop/labs/chatbot/chatbot_app.py
  inflating: __MACOSX/workshop/labs/chatbot/._chatbot_app.py
 extracting: workshop/labs/chatbot/chatbot_lib_kr.py
  inflating: __MACOSX/workshop/labs/chatbot/._chatbot_lib_kr.py
   creating: workshop/labs/image_understanding/images/
  inflating: __MACOSX/workshop/labs/image_understanding/._images
 extracting: workshop/labs/image_understanding/image_understanding_app.py
  inflating: __MACOSX/workshop/labs/image_understanding/._image_understanding_app.py
 extracting: workshop/labs/image_understanding/image_understanding_app_kr.py
  inflating: __MACOSX/workshop/labs/image_understanding/._image_understanding_app_kr.py
 extracting: workshop/labs/image_understanding/image_understanding_lib_kr.py
  inflating: __MACOSX/workshop/labs/image_understanding/._image_understanding_lib_kr.py
 extracting: workshop/labs/image_understanding/image_understanding_lib.py
  inflating: __MACOSX/workshop/labs/image_understanding/._image_understanding_lib.py  
 extracting: workshop/labs/summarization/summarization_app.py
  inflating: __MACOSX/workshop/labs/summarization/._summarization_app.py
 extracting: workshop/labs/summarization/summarization_lib_kr.py
  inflating: __MACOSX/workshop/labs/summarization/._summarization_lib_kr.py
 extracting: workshop/labs/summarization/summarization_lib.py
  inflating: __MACOSX/workshop/labs/summarization/._summarization_lib.py
 extracting: workshop/labs/summarization/summarization_app_kr.py
  inflating: __MACOSX/workshop/labs/summarization/._summarization_app_kr.py
  inflating: workshop/labs/summarization/amazon-leadership-principles-070621-us.pdf  
  inflating: __MACOSX/workshop/labs/summarization/._amazon-leadership-principles-070621-us.pdf
 extracting: workshop/labs/image_prompts/image_prompts_lib.py
  inflating: __MACOSX/workshop/labs/image_prompts/._image_prompts_lib.py
 extracting: workshop/labs/image_prompts/image_prompts_app_kr.py
  inflating: __MACOSX/workshop/labs/image_prompts/._image_prompts_app_kr.py  
 extracting: workshop/labs/image_prompts/image_prompts_app.py
  inflating: __MACOSX/workshop/labs/image_prompts/._image_prompts_app.py
 extracting: workshop/labs/image_prompts/image_prompts_lib_kr.py
  inflating: __MACOSX/workshop/labs/image_prompts/._image_prompts_lib_kr.py  
 extracting: workshop/labs/embedding/bedrock_embedding.py
  inflating: __MACOSX/workshop/labs/embedding/._bedrock_embedding.py
  inflating: workshop/labs/embedding/items.txt
  inflating: __MACOSX/workshop/labs/embedding/._items.txt
 extracting: workshop/labs/model_comparison/model_comparison_app.py  
  inflating: __MACOSX/workshop/labs/model_comparison/._model_comparison_app.py
 extracting: workshop/labs/model_comparison/model_comparison_lib.py
  inflating: __MACOSX/workshop/labs/model_comparison/._model_comparison_lib.py
  inflating: workshop/labs/similarity/services.json
  inflating: __MACOSX/workshop/labs/similarity/._services.json
 extracting: workshop/labs/similarity/similarity_lib.py
  inflating: __MACOSX/workshop/labs/similarity/._similarity_lib.py
 extracting: workshop/labs/similarity/similarity_app.py
  inflating: __MACOSX/workshop/labs/similarity/._similarity_app.py
 extracting: workshop/labs/agent/prompt-chaining.py
  inflating: __MACOSX/workshop/labs/agent/._prompt-chaining.py
 extracting: workshop/labs/agent/util.py  
  inflating: __MACOSX/workshop/labs/agent/._util.py
 extracting: workshop/labs/agent/evaluator-optimizer.py
  inflating: __MACOSX/workshop/labs/agent/._evaluator-optimizer.py
 extracting: workshop/labs/agent/parallelization.py  
  inflating: __MACOSX/workshop/labs/agent/._parallelization.py
 extracting: workshop/labs/agent/routing.py
  inflating: __MACOSX/workshop/labs/agent/._routing.py
 extracting: workshop/labs/rag/rag_lib.py  
  inflating: __MACOSX/workshop/labs/rag/._rag_lib.py
 extracting: workshop/labs/rag/rag_lib_kr.py
  inflating: __MACOSX/workshop/labs/rag/._rag_lib_kr.py
 extracting: workshop/labs/rag/rag_app_kr.py  
  inflating: __MACOSX/workshop/labs/rag/._rag_app_kr.py
 extracting: workshop/labs/rag/rag_app.py
  inflating: __MACOSX/workshop/labs/rag/._rag_app.py
 extracting: workshop/labs/image/image_lib_kr.py
  inflating: __MACOSX/workshop/labs/image/._image_lib_kr.py
 extracting: workshop/labs/image/image_lib.py
  inflating: __MACOSX/workshop/labs/image/._image_lib.py
 extracting: workshop/labs/image/image_app_kr.py  
  inflating: __MACOSX/workshop/labs/image/._image_app_kr.py
 extracting: workshop/labs/image/image_app.py
  inflating: __MACOSX/workshop/labs/image/._image_app.py
  inflating: workshop/labs/recommendations/.DS_Store
  inflating: __MACOSX/workshop/labs/recommendations/._.DS_Store  
 extracting: workshop/labs/recommendations/recommendations_lib.py
  inflating: __MACOSX/workshop/labs/recommendations/._recommendations_lib.py
 extracting: workshop/labs/recommendations/recommendations_app_kr.py
  inflating: __MACOSX/workshop/labs/recommendations/._recommendations_app_kr.py
 extracting: workshop/labs/recommendations/recommendations_lib_kr.py
  inflating: __MACOSX/workshop/labs/recommendations/._recommendations_lib_kr.py
 extracting: workshop/labs/recommendations/recommendations_app.py
  inflating: __MACOSX/workshop/labs/recommendations/._recommendations_app.py  
 extracting: workshop/labs/simple_streamlit/simple_streamlit_app_kr.py
  inflating: __MACOSX/workshop/labs/simple_streamlit/._simple_streamlit_app_kr.py
 extracting: workshop/labs/simple_streamlit/simple_streamlit_app.py
  inflating: __MACOSX/workshop/labs/simple_streamlit/._simple_streamlit_app.py
 extracting: workshop/labs/streaming/streaming_app_kr.py
  inflating: __MACOSX/workshop/labs/streaming/._streaming_app_kr.py
 extracting: workshop/labs/streaming/streaming_lib.py
  inflating: __MACOSX/workshop/labs/streaming/._streaming_lib.py
 extracting: workshop/labs/streaming/streaming_lib_kr.py  
  inflating: __MACOSX/workshop/labs/streaming/._streaming_lib_kr.py
 extracting: workshop/labs/streaming/streaming_app.py
  inflating: __MACOSX/workshop/labs/streaming/._streaming_app.py
 extracting: workshop/labs/image_to_image/image_to_image_lib_kr.py  
  inflating: __MACOSX/workshop/labs/image_to_image/._image_to_image_lib_kr.py
 extracting: workshop/labs/image_to_image/image_to_image_app.py
  inflating: __MACOSX/workshop/labs/image_to_image/._image_to_image_app.py  
 extracting: workshop/labs/image_to_image/image_to_image_app_kr.py
  inflating: __MACOSX/workshop/labs/image_to_image/._image_to_image_app_kr.py
  inflating: workshop/labs/image_to_image/image1.png
  inflating: __MACOSX/workshop/labs/image_to_image/._image1.png  
 extracting: workshop/labs/image_to_image/image_to_image_lib.py
  inflating: __MACOSX/workshop/labs/image_to_image/._image_to_image_lib.py
 extracting: workshop/labs/json/json_lib_kr.py
  inflating: __MACOSX/workshop/labs/json/._json_lib_kr.py  
 extracting: workshop/labs/json/json_app.py
  inflating: __MACOSX/workshop/labs/json/._json_app.py
 extracting: workshop/labs/json/json_app_kr.py
  inflating: __MACOSX/workshop/labs/json/._json_app_kr.py  
 extracting: workshop/labs/json/json_lib.py
  inflating: __MACOSX/workshop/labs/json/._json_lib.py
 extracting: workshop/labs/image_insertion/image_insertion_lib_kr.py
  inflating: __MACOSX/workshop/labs/image_insertion/._image_insertion_lib_kr.py  
 extracting: workshop/labs/image_insertion/image_insertion_lib.py
  inflating: __MACOSX/workshop/labs/image_insertion/._image_insertion_lib.py
   creating: workshop/labs/image_insertion/images/
  inflating: __MACOSX/workshop/labs/image_insertion/._images
 extracting: workshop/labs/image_insertion/image_insertion_app.py
  inflating: __MACOSX/workshop/labs/image_insertion/._image_insertion_app.py
 extracting: workshop/labs/image_insertion/image_insertion_app_kr.py
  inflating: __MACOSX/workshop/labs/image_insertion/._image_insertion_app_kr.py  
 extracting: workshop/labs/csv/csv_app.py
  inflating: __MACOSX/workshop/labs/csv/._csv_app.py
 extracting: workshop/labs/csv/csv_app_kr.py
  inflating: __MACOSX/workshop/labs/csv/._csv_app_kr.py
 extracting: workshop/labs/csv/csv_lib_kr.py
  inflating: __MACOSX/workshop/labs/csv/._csv_lib_kr.py
 extracting: workshop/labs/csv/csv_lib.py
  inflating: __MACOSX/workshop/labs/csv/._csv_lib.py
 extracting: workshop/labs/params/params.py
  inflating: __MACOSX/workshop/labs/params/._params.py
 extracting: workshop/labs/intro_streaming/intro_streaming_kr.py
  inflating: __MACOSX/workshop/labs/intro_streaming/._intro_streaming_kr.py
 extracting: workshop/labs/intro_streaming/intro_streaming.py
  inflating: __MACOSX/workshop/labs/intro_streaming/._intro_streaming.py
 extracting: workshop/labs/api/bedrock_api.py
  inflating: __MACOSX/workshop/labs/api/._bedrock_api.py
 extracting: workshop/labs/api/bedrock_api_kr.py
  inflating: __MACOSX/workshop/labs/api/._bedrock_api_kr.py
 extracting: workshop/labs/image_background/image_background_app.py
  inflating: __MACOSX/workshop/labs/image_background/._image_background_app.py  
   creating: workshop/labs/image_background/images/
  inflating: __MACOSX/workshop/labs/image_background/._images
 extracting: workshop/labs/image_background/image_background_lib_kr.py
  inflating: __MACOSX/workshop/labs/image_background/._image_background_lib_kr.py
 extracting: workshop/labs/image_background/image_background_lib.py  
  inflating: __MACOSX/workshop/labs/image_background/._image_background_lib.py
 extracting: workshop/labs/image_background/image_background_app_kr.py
  inflating: __MACOSX/workshop/labs/image_background/._image_background_app_kr.py
 extracting: workshop/labs/templates/templates_app.py  
  inflating: __MACOSX/workshop/labs/templates/._templates_app.py
 extracting: workshop/labs/templates/templates_app_kr.py
  inflating: __MACOSX/workshop/labs/templates/._templates_app_kr.py
 extracting: workshop/labs/templates/templates_lib_kr.py
  inflating: __MACOSX/workshop/labs/templates/._templates_lib_kr.py  
 extracting: workshop/labs/templates/templates_lib.py
  inflating: __MACOSX/workshop/labs/templates/._templates_lib.py
 extracting: workshop/labs/rag_chatbot/rag_chatbot_lib.py
  inflating: __MACOSX/workshop/labs/rag_chatbot/._rag_chatbot_lib.py
 extracting: workshop/labs/rag_chatbot/rag_chatbot_app_kr.py
  inflating: __MACOSX/workshop/labs/rag_chatbot/._rag_chatbot_app_kr.py
 extracting: workshop/labs/rag_chatbot/rag_chatbot_lib_kr.py
  inflating: __MACOSX/workshop/labs/rag_chatbot/._rag_chatbot_lib_kr.py
 extracting: workshop/labs/rag_chatbot/rag_chatbot_app.py
  inflating: __MACOSX/workshop/labs/rag_chatbot/._rag_chatbot_app.py
 extracting: workshop/labs/text_playground/text_playground_app_kr.py
  inflating: __MACOSX/workshop/labs/text_playground/._text_playground_app_kr.py  
 extracting: workshop/labs/text_playground/text_playground_app.py
  inflating: __MACOSX/workshop/labs/text_playground/._text_playground_app.py
 extracting: workshop/labs/text_playground/text_playground_lib.py
  inflating: __MACOSX/workshop/labs/text_playground/._text_playground_lib.py
 extracting: workshop/labs/text_playground/text_playground_lib_kr.py
  inflating: __MACOSX/workshop/labs/text_playground/._text_playground_lib_kr.py
 extracting: workshop/labs/text/text_lib.py
  inflating: __MACOSX/workshop/labs/text/._text_lib.py
 extracting: workshop/labs/text/text_lib_kr.py  
  inflating: __MACOSX/workshop/labs/text/._text_lib_kr.py
 extracting: workshop/labs/text/text_app.py
  inflating: __MACOSX/workshop/labs/text/._text_app.py
   creating: workshop/labs/text/.ipynb_checkpoints/
  inflating: __MACOSX/workshop/labs/text/._.ipynb_checkpoints  
 extracting: workshop/labs/text/text_app_kr.py
  inflating: __MACOSX/workshop/labs/text/._text_app_kr.py
 extracting: workshop/labs/image_search/image_search_lib_kr.py
  inflating: __MACOSX/workshop/labs/image_search/._image_search_lib_kr.py
   creating: workshop/labs/image_search/images/
  inflating: __MACOSX/workshop/labs/image_search/._images
 extracting: workshop/labs/image_search/image_search_lib.py
  inflating: __MACOSX/workshop/labs/image_search/._image_search_lib.py
 extracting: workshop/labs/image_search/image_search_app_kr.py
  inflating: __MACOSX/workshop/labs/image_search/._image_search_app_kr.py  
 extracting: workshop/labs/image_search/image_search_app.py
  inflating: __MACOSX/workshop/labs/image_search/._image_search_app.py
 extracting: workshop/labs/showcase/showcase_lib_kr.py
  inflating: __MACOSX/workshop/labs/showcase/._showcase_lib_kr.py  
 extracting: workshop/labs/showcase/showcase_lib.py
  inflating: __MACOSX/workshop/labs/showcase/._showcase_lib.py
 extracting: workshop/labs/showcase/showcase_examples_kr.py
  inflating: __MACOSX/workshop/labs/showcase/._showcase_examples_kr.py  
 extracting: workshop/labs/showcase/showcase_app.py
  inflating: __MACOSX/workshop/labs/showcase/._showcase_app.py
 extracting: workshop/labs/showcase/showcase_app_kr.py
  inflating: __MACOSX/workshop/labs/showcase/._showcase_app_kr.py
 extracting: workshop/labs/showcase/showcase_examples.py  
  inflating: __MACOSX/workshop/labs/showcase/._showcase_examples.py
 extracting: workshop/labs/temperature/temperature_kr.py
  inflating: __MACOSX/workshop/labs/temperature/._temperature_kr.py
 extracting: workshop/labs/temperature/temperature.py
  inflating: __MACOSX/workshop/labs/temperature/._temperature.py  
 extracting: workshop/labs/multimodal_chatbot/multimodal_chatbot_app.py
  inflating: __MACOSX/workshop/labs/multimodal_chatbot/._multimodal_chatbot_app.py
   creating: workshop/labs/multimodal_chatbot/images/
  inflating: __MACOSX/workshop/labs/multimodal_chatbot/._images
 extracting: workshop/labs/multimodal_chatbot/multimodal_chatbot_lib_kr.py
  inflating: __MACOSX/workshop/labs/multimodal_chatbot/._multimodal_chatbot_lib_kr.py
 extracting: workshop/labs/multimodal_chatbot/multimodal_chatbot_lib.py
  inflating: __MACOSX/workshop/labs/multimodal_chatbot/._multimodal_chatbot_lib.py
 extracting: workshop/labs/multimodal_chatbot/multimodal_chatbot_app_kr.py  
  inflating: __MACOSX/workshop/labs/multimodal_chatbot/._multimodal_chatbot_app_kr.py
  inflating: workshop/labs/converse/image.webp
  inflating: __MACOSX/workshop/labs/converse/._image.webp
 extracting: workshop/labs/converse/converse_api.py  
  inflating: __MACOSX/workshop/labs/converse/._converse_api.py
 extracting: workshop/labs/converse/converse_api_kr.py
  inflating: __MACOSX/workshop/labs/converse/._converse_api_kr.py
 extracting: workshop/labs/image_style_mixing/image_style_mixing_app.py  
  inflating: __MACOSX/workshop/labs/image_style_mixing/._image_style_mixing_app.py
  inflating: workshop/labs/image_style_mixing/.DS_Store
  inflating: __MACOSX/workshop/labs/image_style_mixing/._.DS_Store
 extracting: workshop/labs/image_style_mixing/image_style_mixing_lib_kr.py
  inflating: __MACOSX/workshop/labs/image_style_mixing/._image_style_mixing_lib_kr.py  
   creating: workshop/labs/image_style_mixing/images/
  inflating: __MACOSX/workshop/labs/image_style_mixing/._images
 extracting: workshop/labs/image_style_mixing/image_style_mixing_lib.py
  inflating: __MACOSX/workshop/labs/image_style_mixing/._image_style_mixing_lib.py  
 extracting: workshop/labs/image_style_mixing/image_style_mixing_app_kr.py
  inflating: __MACOSX/workshop/labs/image_style_mixing/._image_style_mixing_app_kr.py
  inflating: workshop/completed/image_variation/images/example.jpg
  inflating: __MACOSX/workshop/completed/image_variation/images/._example.jpg  
  inflating: workshop/completed/image_extension/images/example.jpg
  inflating: __MACOSX/workshop/completed/image_extension/images/._example.jpg
  inflating: workshop/completed/image_masking/images/mask1.png
  inflating: __MACOSX/workshop/completed/image_masking/images/._mask1.png  
  inflating: workshop/completed/image_masking/images/desk1.jpg
  inflating: __MACOSX/workshop/completed/image_masking/images/._desk1.jpg
  inflating: workshop/completed/image_replacement/images/example.jpg  
  inflating: __MACOSX/workshop/completed/image_replacement/images/._example.jpg
  inflating: workshop/completed/image_understanding/images/person_and_cat.jpg
  inflating: __MACOSX/workshop/completed/image_understanding/images/._person_and_cat.jpg  
  inflating: workshop/completed/image_understanding/images/room.jpg
  inflating: __MACOSX/workshop/completed/image_understanding/images/._room.jpg
  inflating: workshop/completed/image_understanding/images/house.jpg
  inflating: __MACOSX/workshop/completed/image_understanding/images/._house.jpg  
  inflating: workshop/completed/image_understanding/images/food.jpg
  inflating: __MACOSX/workshop/completed/image_understanding/images/._food.jpg
  inflating: workshop/completed/image_understanding/images/toy_car.jpg  
  inflating: __MACOSX/workshop/completed/image_understanding/images/._toy_car.jpg
  inflating: workshop/completed/image_understanding/images/text2.png
  inflating: __MACOSX/workshop/completed/image_understanding/images/._text2.png
  inflating: workshop/completed/image_understanding/images/people.jpg
  inflating: __MACOSX/workshop/completed/image_understanding/images/._people.jpg
  inflating: workshop/completed/image_insertion/images/desk.jpg
  inflating: __MACOSX/workshop/completed/image_insertion/images/._desk.jpg  
  inflating: workshop/completed/image_background/images/example.jpg
  inflating: __MACOSX/workshop/completed/image_background/images/._example.jpg
  inflating: workshop/completed/image_search/images/desk.jpg
  inflating: __MACOSX/workshop/completed/image_search/images/._desk.jpg
  inflating: workshop/completed/image_search/images/z1022.jpg
  inflating: __MACOSX/workshop/completed/image_search/images/._z1022.jpg
  inflating: workshop/completed/image_search/images/z1036.jpg
  inflating: __MACOSX/workshop/completed/image_search/images/._z1036.jpg
  inflating: workshop/completed/image_search/images/z1037.jpg
  inflating: __MACOSX/workshop/completed/image_search/images/._z1037.jpg
  inflating: workshop/completed/image_search/images/z1023.jpg  
  inflating: __MACOSX/workshop/completed/image_search/images/._z1023.jpg
  inflating: workshop/completed/image_search/images/z1035.jpg
  inflating: __MACOSX/workshop/completed/image_search/images/._z1035.jpg
  inflating: workshop/completed/image_search/images/z1021.jpg  
  inflating: __MACOSX/workshop/completed/image_search/images/._z1021.jpg
  inflating: workshop/completed/image_search/images/z1009.jpg
  inflating: __MACOSX/workshop/completed/image_search/images/._z1009.jpg
  inflating: workshop/completed/image_search/images/z1008.jpg  
  inflating: __MACOSX/workshop/completed/image_search/images/._z1008.jpg
  inflating: workshop/completed/image_search/images/z1020.jpg
  inflating: __MACOSX/workshop/completed/image_search/images/._z1020.jpg
  inflating: workshop/completed/image_search/images/z1034.jpg
  inflating: __MACOSX/workshop/completed/image_search/images/._z1034.jpg
  inflating: workshop/completed/image_search/images/z1018.jpg
  inflating: __MACOSX/workshop/completed/image_search/images/._z1018.jpg
  inflating: workshop/completed/image_search/images/z1030.jpg  
  inflating: __MACOSX/workshop/completed/image_search/images/._z1030.jpg
  inflating: workshop/completed/image_search/images/z1024.jpg
  inflating: __MACOSX/workshop/completed/image_search/images/._z1024.jpg
  inflating: workshop/completed/image_search/images/z1025.jpg  
  inflating: __MACOSX/workshop/completed/image_search/images/._z1025.jpg
  inflating: workshop/completed/image_search/images/z1031.jpg
  inflating: __MACOSX/workshop/completed/image_search/images/._z1031.jpg
  inflating: workshop/completed/image_search/images/z1019.jpg
  inflating: __MACOSX/workshop/completed/image_search/images/._z1019.jpg
  inflating: workshop/completed/image_search/images/z1027.jpg  
  inflating: __MACOSX/workshop/completed/image_search/images/._z1027.jpg
  inflating: workshop/completed/image_search/images/z1033.jpg
  inflating: __MACOSX/workshop/completed/image_search/images/._z1033.jpg  
  inflating: workshop/completed/image_search/images/z1032.jpg
  inflating: __MACOSX/workshop/completed/image_search/images/._z1032.jpg
  inflating: workshop/completed/image_search/images/z1026.jpg  
  inflating: __MACOSX/workshop/completed/image_search/images/._z1026.jpg
  inflating: workshop/completed/image_search/images/z1003.jpg
  inflating: __MACOSX/workshop/completed/image_search/images/._z1003.jpg
  inflating: workshop/completed/image_search/images/z1017.jpg  
  inflating: __MACOSX/workshop/completed/image_search/images/._z1017.jpg
  inflating: workshop/completed/image_search/images/z1016.jpg
  inflating: __MACOSX/workshop/completed/image_search/images/._z1016.jpg
  inflating: workshop/completed/image_search/images/z1002.jpg
  inflating: __MACOSX/workshop/completed/image_search/images/._z1002.jpg
  inflating: workshop/completed/image_search/images/z1014.jpg
  inflating: __MACOSX/workshop/completed/image_search/images/._z1014.jpg  
  inflating: workshop/completed/image_search/images/z1028.jpg
  inflating: __MACOSX/workshop/completed/image_search/images/._z1028.jpg
  inflating: workshop/completed/image_search/images/z1029.jpg
  inflating: __MACOSX/workshop/completed/image_search/images/._z1029.jpg
  inflating: workshop/completed/image_search/images/z1001.jpg
  inflating: __MACOSX/workshop/completed/image_search/images/._z1001.jpg
  inflating: workshop/completed/image_search/images/z1015.jpg
  inflating: __MACOSX/workshop/completed/image_search/images/._z1015.jpg
  inflating: workshop/completed/image_search/images/z1039.png
  inflating: __MACOSX/workshop/completed/image_search/images/._z1039.png
  inflating: workshop/completed/image_search/images/z1011.jpg
  inflating: __MACOSX/workshop/completed/image_search/images/._z1011.jpg
  inflating: workshop/completed/image_search/images/z1005.jpg
  inflating: __MACOSX/workshop/completed/image_search/images/._z1005.jpg  
  inflating: workshop/completed/image_search/images/z1004.jpg
  inflating: __MACOSX/workshop/completed/image_search/images/._z1004.jpg
  inflating: workshop/completed/image_search/images/z1010.jpg
  inflating: __MACOSX/workshop/completed/image_search/images/._z1010.jpg  
  inflating: workshop/completed/image_search/images/z1006.jpg
  inflating: __MACOSX/workshop/completed/image_search/images/._z1006.jpg
  inflating: workshop/completed/image_search/images/z1012.jpg
  inflating: __MACOSX/workshop/completed/image_search/images/._z1012.jpg
  inflating: workshop/completed/image_search/images/z1013.jpg
  inflating: __MACOSX/workshop/completed/image_search/images/._z1013.jpg
  inflating: workshop/completed/image_search/images/z1007.jpg
  inflating: __MACOSX/workshop/completed/image_search/images/._z1007.jpg
  inflating: workshop/completed/multimodal_chatbot/images/house_and_car.jpg
  inflating: __MACOSX/workshop/completed/multimodal_chatbot/images/._house_and_car.jpg
  inflating: workshop/completed/multimodal_chatbot/images/minihouse.jpg
  inflating: __MACOSX/workshop/completed/multimodal_chatbot/images/._minihouse.jpg  
  inflating: workshop/completed/multimodal_chatbot/images/minicar.jpg
  inflating: __MACOSX/workshop/completed/multimodal_chatbot/images/._minicar.jpg
  inflating: workshop/completed/image_style_mixing/images/art_example.png
  inflating: __MACOSX/workshop/completed/image_style_mixing/images/._art_example.png
  inflating: workshop/completed/image_style_mixing/images/cat_example.png
  inflating: __MACOSX/workshop/completed/image_style_mixing/images/._cat_example.png  
  inflating: workshop/labs/image_variation/images/example.jpg
  inflating: __MACOSX/workshop/labs/image_variation/images/._example.jpg
  inflating: workshop/labs/image_extension/images/example.jpg
  inflating: __MACOSX/workshop/labs/image_extension/images/._example.jpg
  inflating: workshop/labs/image_masking/images/mask1.png
  inflating: __MACOSX/workshop/labs/image_masking/images/._mask1.png
  inflating: workshop/labs/image_masking/images/desk1.jpg
  inflating: __MACOSX/workshop/labs/image_masking/images/._desk1.jpg
  inflating: workshop/labs/image_replacement/images/example.jpg
  inflating: __MACOSX/workshop/labs/image_replacement/images/._example.jpg
 extracting: workshop/labs/embeddings_search/.ipynb_checkpoints/embeddings_search_lib_kr-checkpoint.py
  inflating: __MACOSX/workshop/labs/embeddings_search/.ipynb_checkpoints/._embeddings_search_lib_kr-checkpoint.py  
  inflating: workshop/labs/image_understanding/images/person_and_cat.jpg
  inflating: __MACOSX/workshop/labs/image_understanding/images/._person_and_cat.jpg
  inflating: workshop/labs/image_understanding/images/room.jpg  
  inflating: __MACOSX/workshop/labs/image_understanding/images/._room.jpg
  inflating: workshop/labs/image_understanding/images/house.jpg
  inflating: __MACOSX/workshop/labs/image_understanding/images/._house.jpg
  inflating: workshop/labs/image_understanding/images/food.jpg  
  inflating: __MACOSX/workshop/labs/image_understanding/images/._food.jpg
  inflating: workshop/labs/image_understanding/images/toy_car.jpg
  inflating: __MACOSX/workshop/labs/image_understanding/images/._toy_car.jpg
  inflating: workshop/labs/image_understanding/images/text2.png  
  inflating: __MACOSX/workshop/labs/image_understanding/images/._text2.png
  inflating: workshop/labs/image_understanding/images/people.jpg
  inflating: __MACOSX/workshop/labs/image_understanding/images/._people.jpg  
  inflating: workshop/labs/image_insertion/images/desk.jpg
  inflating: __MACOSX/workshop/labs/image_insertion/images/._desk.jpg
  inflating: workshop/labs/image_background/images/example.jpg
  inflating: __MACOSX/workshop/labs/image_background/images/._example.jpg  
 extracting: workshop/labs/text/.ipynb_checkpoints/text_lib_kr-checkpoint.py
  inflating: __MACOSX/workshop/labs/text/.ipynb_checkpoints/._text_lib_kr-checkpoint.py
  inflating: workshop/labs/image_search/images/desk.jpg
  inflating: __MACOSX/workshop/labs/image_search/images/._desk.jpg  
  inflating: workshop/labs/image_search/images/z1022.jpg
  inflating: __MACOSX/workshop/labs/image_search/images/._z1022.jpg
  inflating: workshop/labs/image_search/images/z1036.jpg
  inflating: __MACOSX/workshop/labs/image_search/images/._z1036.jpg
  inflating: workshop/labs/image_search/images/z1037.jpg
  inflating: __MACOSX/workshop/labs/image_search/images/._z1037.jpg
  inflating: workshop/labs/image_search/images/z1023.jpg  
  inflating: __MACOSX/workshop/labs/image_search/images/._z1023.jpg
  inflating: workshop/labs/image_search/images/z1035.jpg
  inflating: __MACOSX/workshop/labs/image_search/images/._z1035.jpg
  inflating: workshop/labs/image_search/images/z1021.jpg  
  inflating: __MACOSX/workshop/labs/image_search/images/._z1021.jpg
  inflating: workshop/labs/image_search/images/z1009.jpg
  inflating: __MACOSX/workshop/labs/image_search/images/._z1009.jpg
  inflating: workshop/labs/image_search/images/z1008.jpg
  inflating: __MACOSX/workshop/labs/image_search/images/._z1008.jpg
  inflating: workshop/labs/image_search/images/z1020.jpg
  inflating: __MACOSX/workshop/labs/image_search/images/._z1020.jpg  
  inflating: workshop/labs/image_search/images/z1034.jpg
  inflating: __MACOSX/workshop/labs/image_search/images/._z1034.jpg
  inflating: workshop/labs/image_search/images/z1018.jpg
  inflating: __MACOSX/workshop/labs/image_search/images/._z1018.jpg  
  inflating: workshop/labs/image_search/images/z1030.jpg
  inflating: __MACOSX/workshop/labs/image_search/images/._z1030.jpg
  inflating: workshop/labs/image_search/images/z1024.jpg
  inflating: __MACOSX/workshop/labs/image_search/images/._z1024.jpg  
  inflating: workshop/labs/image_search/images/z1025.jpg
  inflating: __MACOSX/workshop/labs/image_search/images/._z1025.jpg
  inflating: workshop/labs/image_search/images/z1031.jpg  
  inflating: __MACOSX/workshop/labs/image_search/images/._z1031.jpg
  inflating: workshop/labs/image_search/images/z1019.jpg
  inflating: __MACOSX/workshop/labs/image_search/images/._z1019.jpg
  inflating: workshop/labs/image_search/images/z1027.jpg  
  inflating: __MACOSX/workshop/labs/image_search/images/._z1027.jpg
  inflating: workshop/labs/image_search/images/z1033.jpg
  inflating: __MACOSX/workshop/labs/image_search/images/._z1033.jpg
  inflating: workshop/labs/image_search/images/z1032.jpg
  inflating: __MACOSX/workshop/labs/image_search/images/._z1032.jpg
  inflating: workshop/labs/image_search/images/z1026.jpg
  inflating: __MACOSX/workshop/labs/image_search/images/._z1026.jpg  
  inflating: workshop/labs/image_search/images/z1003.jpg
  inflating: __MACOSX/workshop/labs/image_search/images/._z1003.jpg
  inflating: workshop/labs/image_search/images/z1017.jpg
  inflating: __MACOSX/workshop/labs/image_search/images/._z1017.jpg  
  inflating: workshop/labs/image_search/images/z1016.jpg
  inflating: __MACOSX/workshop/labs/image_search/images/._z1016.jpg
  inflating: workshop/labs/image_search/images/z1002.jpg
  inflating: __MACOSX/workshop/labs/image_search/images/._z1002.jpg
  inflating: workshop/labs/image_search/images/z1014.jpg
  inflating: __MACOSX/workshop/labs/image_search/images/._z1014.jpg
  inflating: workshop/labs/image_search/images/z1028.jpg  
  inflating: __MACOSX/workshop/labs/image_search/images/._z1028.jpg
  inflating: workshop/labs/image_search/images/z1029.jpg
  inflating: __MACOSX/workshop/labs/image_search/images/._z1029.jpg  
  inflating: workshop/labs/image_search/images/z1001.jpg
  inflating: __MACOSX/workshop/labs/image_search/images/._z1001.jpg
  inflating: workshop/labs/image_search/images/z1015.jpg
  inflating: __MACOSX/workshop/labs/image_search/images/._z1015.jpg
  inflating: workshop/labs/image_search/images/z1039.png
  inflating: __MACOSX/workshop/labs/image_search/images/._z1039.png  
  inflating: workshop/labs/image_search/images/z1011.jpg
  inflating: __MACOSX/workshop/labs/image_search/images/._z1011.jpg
  inflating: workshop/labs/image_search/images/z1005.jpg  
  inflating: __MACOSX/workshop/labs/image_search/images/._z1005.jpg
  inflating: workshop/labs/image_search/images/z1004.jpg
  inflating: __MACOSX/workshop/labs/image_search/images/._z1004.jpg
  inflating: workshop/labs/image_search/images/z1010.jpg  
  inflating: __MACOSX/workshop/labs/image_search/images/._z1010.jpg
  inflating: workshop/labs/image_search/images/z1006.jpg
  inflating: __MACOSX/workshop/labs/image_search/images/._z1006.jpg  
  inflating: workshop/labs/image_search/images/z1012.jpg
  inflating: __MACOSX/workshop/labs/image_search/images/._z1012.jpg
  inflating: workshop/labs/image_search/images/z1013.jpg
  inflating: __MACOSX/workshop/labs/image_search/images/._z1013.jpg  
  inflating: workshop/labs/image_search/images/z1007.jpg
  inflating: __MACOSX/workshop/labs/image_search/images/._z1007.jpg
  inflating: workshop/labs/multimodal_chatbot/images/house_and_car.jpg  
  inflating: __MACOSX/workshop/labs/multimodal_chatbot/images/._house_and_car.jpg
  inflating: workshop/labs/multimodal_chatbot/images/minihouse.jpg
  inflating: __MACOSX/workshop/labs/multimodal_chatbot/images/._minihouse.jpg  
  inflating: workshop/labs/multimodal_chatbot/images/minicar.jpg
  inflating: __MACOSX/workshop/labs/multimodal_chatbot/images/._minicar.jpg
  inflating: workshop/labs/image_style_mixing/images/art_example.png
  inflating: __MACOSX/workshop/labs/image_style_mixing/images/._art_example.png
  inflating: workshop/labs/image_style_mixing/images/cat_example.png
  inflating: __MACOSX/workshop/labs/image_style_mixing/images/._cat_example.png


pip3 install -r c/ai-aws/workshop/setup/requirements.txt -U
Collecting faiss-cpu
  Downloading faiss_cpu-1.11.0-cp39-cp39-win_amd64.whl (15.0 MB)
     |████████████████████████████████| 15.0 MB 331 kB/s
Collecting transformers
  Downloading transformers-4.52.4-py3-none-any.whl (10.5 MB)
     |████████████████████████████████| 10.5 MB 1.3 MB/s
Requirement already satisfied: Pillow in c:\users\jacke\anaconda3\lib\site-packages (from -r C:/ai-aws/workshop/setup/requirements.txt (line 3)) (9.0.1)
Collecting Pillow
  Downloading pillow-11.2.1-cp39-cp39-win_amd64.whl (2.7 MB)
     |████████████████████████████████| 2.7 MB 1.6 MB/s
Collecting pypdf
  Downloading pypdf-5.6.0-py3-none-any.whl (304 kB)
     |████████████████████████████████| 304 kB 6.8 MB/s
Collecting jq
  Downloading jq-1.9.1-cp39-cp39-win_amd64.whl (422 kB)
     |████████████████████████████████| 422 kB 3.3 MB/s
Collecting anthropic
  Downloading anthropic-0.54.0-py3-none-any.whl (288 kB)
     |████████████████████████████████| 288 kB 3.3 MB/s
Collecting chroma-hnswlib==0.7.5
  Downloading chroma_hnswlib-0.7.5-cp39-cp39-win_amd64.whl (151 kB)
     |████████████████████████████████| 151 kB 2.2 MB/s
Collecting chromadb==0.5.4
  Downloading chromadb-0.5.4-py3-none-any.whl (581 kB)
     |████████████████████████████████| 581 kB 2.2 MB/s
Collecting langchain-core==0.1.40
  Downloading langchain_core-0.1.40-py3-none-any.whl (276 kB)
     |████████████████████████████████| 276 kB 3.3 MB/s
Collecting langchain-text-splitters==0.0.1
  Downloading langchain_text_splitters-0.0.1-py3-none-any.whl (21 kB)
Collecting langchain-community==0.0.31
  Downloading langchain_community-0.0.31-py3-none-any.whl (1.9 MB)
     |████████████████████████████████| 1.9 MB 3.3 MB/s
Collecting langchain==0.1.13
  Downloading langchain-0.1.13-py3-none-any.whl (810 kB)
     |████████████████████████████████| 810 kB 3.2 MB/s
Collecting streamlit
  Downloading streamlit-1.46.0-py3-none-any.whl (10.1 MB)
     |████████████████████████████████| 10.1 MB 1.6 MB/s
Requirement already satisfied: botocore in c:\users\jacke\anaconda3\lib\site-packages (from -r C:/ai-aws/workshop/setup/requirements.txt (line 14)) (1.24.32)
Collecting botocore
  Downloading botocore-1.38.41-py3-none-any.whl (13.7 MB)
     |████████████████████████████████| 13.7 MB 1.7 MB/s
Requirement already satisfied: boto3 in c:\users\jacke\anaconda3\lib\site-packages (from -r C:/ai-aws/workshop/setup/requirements.txt (line 15)) (1.21.32)
Collecting boto3
  Downloading boto3-1.38.41-py3-none-any.whl (139 kB)
     |████████████████████████████████| 139 kB 2.2 MB/s
Collecting awscli
  Downloading awscli-1.40.40-py3-none-any.whl (4.7 MB)
     |████████████████████████████████| 4.7 MB 1.6 MB/s
Requirement already satisfied: numpy in c:\users\jacke\anaconda3\lib\site-packages (from chroma-hnswlib==0.7.5->-r C:/ai-aws/workshop/setup/requirements.txt (line 7)) (1.21.5)
Collecting typer>=0.9.0
  Downloading typer-0.16.0-py3-none-any.whl (46 kB)
     |████████████████████████████████| 46 kB 3.2 MB/s
Collecting opentelemetry-api>=1.2.0
  Downloading opentelemetry_api-1.34.1-py3-none-any.whl (65 kB)
     |████████████████████████████████| 65 kB 2.0 MB/s
Collecting overrides>=7.3.1
  Downloading overrides-7.7.0-py3-none-any.whl (17 kB)
Collecting onnxruntime>=1.14.1
  Downloading onnxruntime-1.19.2-cp39-cp39-win_amd64.whl (11.1 MB)
     |████████████████████████████████| 11.1 MB 1.1 MB/s
Collecting kubernetes>=28.1.0
  Downloading kubernetes-33.1.0-py2.py3-none-any.whl (1.9 MB)
     |████████████████████████████████| 1.9 MB 2.2 MB/s
Collecting uvicorn[standard]>=0.18.3
  Downloading uvicorn-0.34.3-py3-none-any.whl (62 kB)
     |████████████████████████████████| 62 kB 4.8 MB/s
Collecting pypika>=0.48.9
  Downloading PyPika-0.48.9.tar.gz (67 kB)
     |████████████████████████████████| 67 kB 966 kB/s
  Installing build dependencies ... done
  Getting requirements to build wheel ... done
    Preparing wheel metadata ... done
Collecting build>=1.0.3
  Downloading build-1.2.2.post1-py3-none-any.whl (22 kB)
Collecting opentelemetry-instrumentation-fastapi>=0.41b0
  Downloading opentelemetry_instrumentation_fastapi-0.55b1-py3-none-any.whl (12 kB)
Collecting tqdm>=4.65.0
  Downloading tqdm-4.67.1-py3-none-any.whl (78 kB)
     |████████████████████████████████| 78 kB 2.6 MB/s
Collecting typing-extensions>=4.5.0
  Downloading typing_extensions-4.14.0-py3-none-any.whl (43 kB)
     |████████████████████████████████| 43 kB 702 kB/s
Collecting orjson>=3.9.12
  Downloading orjson-3.10.18-cp39-cp39-win_amd64.whl (134 kB)
     |████████████████████████████████| 134 kB 3.2 MB/s
Collecting importlib-resources
  Downloading importlib_resources-6.5.2-py3-none-any.whl (37 kB)
Collecting tokenizers>=0.13.2
  Downloading tokenizers-0.21.1-cp39-abi3-win_amd64.whl (2.4 MB)
     |████████████████████████████████| 2.4 MB 1.3 MB/s
Collecting tenacity>=8.2.3
  Downloading tenacity-9.1.2-py3-none-any.whl (28 kB)
Collecting bcrypt>=4.0.1
  Downloading bcrypt-4.3.0-cp39-abi3-win_amd64.whl (152 kB)
     |████████████████████████████████| 152 kB 3.3 MB/s
Collecting mmh3>=4.0.1
  Downloading mmh3-5.1.0-cp39-cp39-win_amd64.whl (41 kB)
     |████████████████████████████████| 41 kB 154 kB/s
Collecting opentelemetry-sdk>=1.2.0
  Downloading opentelemetry_sdk-1.34.1-py3-none-any.whl (118 kB)
     |████████████████████████████████| 118 kB 2.2 MB/s
Collecting opentelemetry-exporter-otlp-proto-grpc>=1.2.0
  Downloading opentelemetry_exporter_otlp_proto_grpc-1.34.1-py3-none-any.whl (18 kB)
Collecting posthog>=2.4.0
  Downloading posthog-5.4.0-py3-none-any.whl (105 kB)
     |████████████████████████████████| 105 kB 2.2 MB/s
Collecting pydantic>=1.9
  Downloading pydantic-2.11.7-py3-none-any.whl (444 kB)
     |████████████████████████████████| 444 kB 1.7 MB/s
Requirement already satisfied: PyYAML>=6.0.0 in c:\users\jacke\anaconda3\lib\site-packages (from chromadb==0.5.4->-r C:/ai-aws/workshop/setup/requirements.txt (line 8)) (6.0)
Collecting numpy
  Downloading numpy-1.26.4-cp39-cp39-win_amd64.whl (15.8 MB)
     |████████████████████████████████| 15.8 MB 1.7 MB/s
Collecting grpcio>=1.58.0
  Downloading grpcio-1.73.0-cp39-cp39-win_amd64.whl (4.3 MB)
     |████████████████████████████████| 4.3 MB 1.3 MB/s
Collecting httpx>=0.27.0
  Downloading httpx-0.28.1-py3-none-any.whl (73 kB)
     |████████████████████████████████| 73 kB 2.6 MB/s
Collecting fastapi>=0.95.2
  Downloading fastapi-0.115.13-py3-none-any.whl (95 kB)
     |████████████████████████████████| 95 kB 1.2 MB/s
Collecting tenacity>=8.2.3
  Downloading tenacity-8.5.0-py3-none-any.whl (28 kB)
Collecting packaging<24.0,>=23.2
  Downloading packaging-23.2-py3-none-any.whl (53 kB)
     |████████████████████████████████| 53 kB 3.8 MB/s
Collecting langsmith<0.2.0,>=0.1.0
  Downloading langsmith-0.1.147-py3-none-any.whl (311 kB)
     |████████████████████████████████| 311 kB 2.2 MB/s
Collecting jsonpatch<2.0,>=1.33
  Downloading jsonpatch-1.33-py2.py3-none-any.whl (12 kB)
Requirement already satisfied: SQLAlchemy<3,>=1.4 in c:\users\jacke\anaconda3\lib\site-packages (from langchain-community==0.0.31->-r C:/ai-aws/workshop/setup/requirements.txt (line 11
)) (1.4.32)
Requirement already satisfied: requests<3,>=2 in c:\users\jacke\anaconda3\lib\site-packages (from langchain-community==0.0.31->-r C:/ai-aws/workshop/setup/requirements.txt (line 11)) (
2.27.1)
Collecting dataclasses-json<0.7,>=0.5.7
  Downloading dataclasses_json-0.6.7-py3-none-any.whl (28 kB)
Collecting aiohttp<4.0.0,>=3.8.3
  Downloading aiohttp-3.12.13-cp39-cp39-win_amd64.whl (451 kB)
     |████████████████████████████████| 451 kB 2.2 MB/s
Requirement already satisfied: async-timeout<5.0.0,>=4.0.0 in c:\users\jacke\anaconda3\lib\site-packages (from langchain==0.1.13->-r C:/ai-aws/workshop/setup/requirements.txt (line 12)
) (4.0.1)
Requirement already satisfied: regex!=2019.12.17 in c:\users\jacke\anaconda3\lib\site-packages (from transformers->-r C:/ai-aws/workshop/setup/requirements.txt (line 2)) (2022.3.15)
Collecting huggingface-hub<1.0,>=0.30.0
  Downloading huggingface_hub-0.33.0-py3-none-any.whl (514 kB)
  Downloading protobuf-6.31.1-cp39-cp39-win_amd64.whl (435 kB)
     |████████████████████████████████| 435 kB 2.2 MB/s
Requirement already satisfied: pandas<3,>=1.4.0 in c:\users\jacke\anaconda3\lib\site-packages (from streamlit->-r C:/ai-aws/workshop/setup/requirements.txt (line 13)) (1.4.2)
Requirement already satisfied: cachetools<7,>=4.0 in c:\users\jacke\anaconda3\lib\site-packages (from streamlit->-r C:/ai-aws/workshop/setup/requirements.txt (line 13)) (4.2.2)        
Requirement already satisfied: toml<2,>=0.10.1 in c:\users\jacke\anaconda3\lib\site-packages (from streamlit->-r C:/ai-aws/workshop/setup/requirements.txt (line 13)) (0.10.2)
Requirement already satisfied: click<9,>=7.0 in c:\users\jacke\anaconda3\lib\site-packages (from streamlit->-r C:/ai-aws/workshop/setup/requirements.txt (line 13)) (8.0.4)
Requirement already satisfied: watchdog<7,>=2.1.5 in c:\users\jacke\anaconda3\lib\site-packages (from streamlit->-r C:/ai-aws/workshop/setup/requirements.txt (line 13)) (2.1.6)        
Collecting pydeck<1,>=0.8.0b4
  Downloading pydeck-0.9.1-py2.py3-none-any.whl (6.9 MB)
     |████████████████████████████████| 6.9 MB 819 kB/s
Collecting pyarrow>=7.0
  Downloading pyarrow-20.0.0-cp39-cp39-win_amd64.whl (25.8 MB)
     |████████████████████████████████| 25.8 MB 1.6 MB/s
Collecting blinker<2,>=1.5.0
  Downloading blinker-1.9.0-py3-none-any.whl (8.5 kB)
Collecting gitpython!=3.1.19,<4,>=3.0.7
  Downloading GitPython-3.1.44-py3-none-any.whl (207 kB)
     |████████████████████████████████| 207 kB 2.2 MB/s
Requirement already satisfied: tornado!=6.5.0,<7,>=6.0.3 in c:\users\jacke\anaconda3\lib\site-packages (from streamlit->-r C:/ai-aws/workshop/setup/requirements.txt (line 13)) (6.1)
Collecting altair<6,>=4.0
  Downloading altair-5.5.0-py3-none-any.whl (731 kB)
     |████████████████████████████████| 731 kB 2.2 MB/s
Requirement already satisfied: jmespath<2.0.0,>=0.7.1 in c:\users\jacke\anaconda3\lib\site-packages (from botocore->-r C:/ai-aws/workshop/setup/requirements.txt (line 14)) (0.10.0)
Requirement already satisfied: python-dateutil<3.0.0,>=2.1 in c:\users\jacke\anaconda3\lib\site-packages (from botocore->-r C:/ai-aws/workshop/setup/requirements.txt (line 14)) (2.8.2)
Requirement already satisfied: urllib3<1.27,>=1.25.4 in c:\users\jacke\anaconda3\lib\site-packages (from botocore->-r C:/ai-aws/workshop/setup/requirements.txt (line 14)) (1.26.9)     
Collecting s3transfer<0.14.0,>=0.13.0
  Downloading s3transfer-0.13.0-py3-none-any.whl (85 kB)
     |████████████████████████████████| 85 kB 3.0 MB/s
Collecting docutils<=0.19,>=0.18.1
  Downloading docutils-0.19-py3-none-any.whl (570 kB)
     |████████████████████████████████| 570 kB 3.3 MB/s
Requirement already satisfied: colorama<0.4.7,>=0.2.5 in c:\users\jacke\anaconda3\lib\site-packages (from awscli->-r C:/ai-aws/workshop/setup/requirements.txt (line 16)) (0.4.4)
Requirement already satisfied: rsa<4.8,>=3.1.2 in c:\users\jacke\anaconda3\lib\site-packages (from awscli->-r C:/ai-aws/workshop/setup/requirements.txt (line 16)) (4.7.2)
Requirement already satisfied: attrs>=17.3.0 in c:\users\jacke\anaconda3\lib\site-packages (from aiohttp<4.0.0,>=3.8.3->langchain-community==0.0.31->-r C:/ai-aws/workshop/setup/require
ments.txt (line 11)) (21.4.0)
Requirement already satisfied: aiosignal>=1.1.2 in c:\users\jacke\anaconda3\lib\site-packages (from aiohttp<4.0.0,>=3.8.3->langchain-community==0.0.31->-r C:/ai-aws/workshop/setup/requ
irements.txt (line 11)) (1.2.0)
Collecting propcache>=0.2.0
  Downloading propcache-0.3.2-cp39-cp39-win_amd64.whl (42 kB)
     |████████████████████████████████| 42 kB 303 kB/s
Requirement already satisfied: frozenlist>=1.1.1 in c:\users\jacke\anaconda3\lib\site-packages (from aiohttp<4.0.0,>=3.8.3->langchain-community==0.0.31->-r C:/ai-aws/workshop/setup/req
uirements.txt (line 11)) (1.2.0)
Requirement already satisfied: multidict<7.0,>=4.5 in c:\users\jacke\anaconda3\lib\site-packages (from aiohttp<4.0.0,>=3.8.3->langchain-community==0.0.31->-r C:/ai-aws/workshop/setup/r
equirements.txt (line 11)) (5.1.0)
Collecting yarl<2.0,>=1.17.0
  Downloading yarl-1.20.1-cp39-cp39-win_amd64.whl (87 kB)
     |████████████████████████████████| 87 kB 5.8 MB/s
Collecting aiohappyeyeballs>=2.5.0
  Downloading aiohappyeyeballs-2.6.1-py3-none-any.whl (15 kB)
Collecting narwhals>=1.14.2
  Downloading narwhals-1.43.1-py3-none-any.whl (362 kB)
     |████████████████████████████████| 362 kB 3.3 MB/s
Requirement already satisfied: jsonschema>=3.0 in c:\users\jacke\anaconda3\lib\site-packages (from altair<6,>=4.0->streamlit->-r C:/ai-aws/workshop/setup/requirements.txt (line 13)) (4
.4.0)
Requirement already satisfied: jinja2 in c:\users\jacke\anaconda3\lib\site-packages (from altair<6,>=4.0->streamlit->-r C:/ai-aws/workshop/setup/requirements.txt (line 13)) (2.11.3)
Requirement already satisfied: idna>=2.8 in c:\users\jacke\anaconda3\lib\site-packages (from anyio<5,>=3.5.0->anthropic->-r C:/ai-aws/workshop/setup/requirements.txt (line 6)) (3.3)
Collecting pyproject_hooks
  Downloading pyproject_hooks-1.2.0-py3-none-any.whl (10 kB)
Requirement already satisfied: importlib-metadata>=4.6 in c:\users\jacke\anaconda3\lib\site-packages (from build>=1.0.3->chromadb==0.5.4->-r C:/ai-aws/workshop/setup/requirements.txt (
line 8)) (4.11.3)
Requirement already satisfied: tomli>=1.1.0 in c:\users\jacke\anaconda3\lib\site-packages (from build>=1.0.3->chromadb==0.5.4->-r C:/ai-aws/workshop/setup/requirements.txt (line 8)) (1
.2.2)
Collecting marshmallow<4.0.0,>=3.18.0
  Downloading marshmallow-3.26.1-py3-none-any.whl (50 kB)
     |████████████████████████████████| 50 kB 3.4 MB/s
Collecting typing-inspect<1,>=0.4.0
  Downloading typing_inspect-0.9.0-py3-none-any.whl (8.8 kB)
Collecting starlette<0.47.0,>=0.40.0
  Downloading starlette-0.46.2-py3-none-any.whl (72 kB)
     |████████████████████████████████| 72 kB 190 kB/s
Collecting gitdb<5,>=4.0.1
  Downloading gitdb-4.0.12-py3-none-any.whl (62 kB)
     |████████████████████████████████| 62 kB 4.5 MB/s
Collecting smmap<6,>=3.0.1
  Downloading smmap-5.0.2-py3-none-any.whl (24 kB)
Requirement already satisfied: certifi in c:\users\jacke\anaconda3\lib\site-packages (from httpx>=0.27.0->chromadb==0.5.4->-r C:/ai-aws/workshop/setup/requirements.txt (line 8)) (2021.
10.8)
Collecting httpcore==1.*
  Downloading httpcore-1.0.9-py3-none-any.whl (78 kB)
     |████████████████████████████████| 78 kB 1.5 MB/s
Collecting h11>=0.16
  Downloading h11-0.16.0-py3-none-any.whl (37 kB)
Collecting fsspec>=2023.5.0
  Downloading fsspec-2025.5.1-py3-none-any.whl (199 kB)
     |████████████████████████████████| 199 kB 6.8 MB/s
Requirement already satisfied: zipp>=0.5 in c:\users\jacke\anaconda3\lib\site-packages (from importlib-metadata>=4.6->build>=1.0.3->chromadb==0.5.4->-r C:/ai-aws/workshop/setup/require
ments.txt (line 8)) (3.7.0)
Collecting jsonpointer>=1.9
  Downloading jsonpointer-3.0.0-py2.py3-none-any.whl (7.6 kB)
Requirement already satisfied: pyrsistent!=0.17.0,!=0.17.1,!=0.17.2,>=0.14.0 in c:\users\jacke\anaconda3\lib\site-packages (from jsonschema>=3.0->altair<6,>=4.0->streamlit->-r C:/ai-aw
s/workshop/setup/requirements.txt (line 13)) (0.18.0)
Requirement already satisfied: google-auth>=1.0.1 in c:\users\jacke\anaconda3\lib\site-packages (from kubernetes>=28.1.0->chromadb==0.5.4->-r C:/ai-aws/workshop/setup/requirements.txt 
(line 8)) (1.33.0)
Requirement already satisfied: websocket-client!=0.40.0,!=0.41.*,!=0.42.*,>=0.32.0 in c:\users\jacke\anaconda3\lib\site-packages (from kubernetes>=28.1.0->chromadb==0.5.4->-r C:/ai-aws
/workshop/setup/requirements.txt (line 8)) (0.58.0)
Requirement already satisfied: six>=1.9.0 in c:\users\jacke\anaconda3\lib\site-packages (from kubernetes>=28.1.0->chromadb==0.5.4->-r C:/ai-aws/workshop/setup/requirements.txt (line 8)
) (1.16.0)
Collecting durationpy>=0.7
  Downloading durationpy-0.10-py3-none-any.whl (3.9 kB)
Collecting oauthlib>=3.2.2
  Downloading oauthlib-3.3.1-py3-none-any.whl (160 kB)
     |████████████████████████████████| 160 kB 3.2 MB/s
Collecting requests-oauthlib
  Downloading requests_oauthlib-2.0.0-py2.py3-none-any.whl (24 kB)
Requirement already satisfied: pyasn1-modules>=0.2.1 in c:\users\jacke\anaconda3\lib\site-packages (from google-auth>=1.0.1->kubernetes>=28.1.0->chromadb==0.5.4->-r C:/ai-aws/workshop/
setup/requirements.txt (line 8)) (0.2.8)
Requirement already satisfied: setuptools>=40.3.0 in c:\users\jacke\anaconda3\lib\site-packages (from google-auth>=1.0.1->kubernetes>=28.1.0->chromadb==0.5.4->-r C:/ai-aws/workshop/set
up/requirements.txt (line 8)) (61.2.0)
Collecting requests-toolbelt<2.0.0,>=1.0.0
  Downloading requests_toolbelt-1.0.0-py2.py3-none-any.whl (54 kB)
     |████████████████████████████████| 54 kB 1.2 MB/s
Collecting flatbuffers
  Downloading flatbuffers-25.2.10-py2.py3-none-any.whl (30 kB)
Collecting coloredlogs
  Downloading coloredlogs-15.0.1-py2.py3-none-any.whl (46 kB)
     |████████████████████████████████| 46 kB 3.2 MB/s
Requirement already satisfied: sympy in c:\users\jacke\anaconda3\lib\site-packages (from onnxruntime>=1.14.1->chromadb==0.5.4->-r C:/ai-aws/workshop/setup/requirements.txt (line 8)) (1
.10.1)
Collecting importlib-metadata>=4.6
  Downloading importlib_metadata-8.7.0-py3-none-any.whl (27 kB)
Collecting zipp>=0.5
  Downloading zipp-3.23.0-py3-none-any.whl (10 kB)
Collecting opentelemetry-proto==1.34.1
  Downloading opentelemetry_proto-1.34.1-py3-none-any.whl (55 kB)
     |████████████████████████████████| 55 kB 3.8 MB/s
Requirement already satisfied: googleapis-common-protos~=1.52 in c:\users\jacke\anaconda3\lib\site-packages (from opentelemetry-exporter-otlp-proto-grpc>=1.2.0->chromadb==0.5.4->-r C:/
ai-aws/workshop/setup/requirements.txt (line 8)) (1.53.0)
Collecting opentelemetry-exporter-otlp-proto-common==1.34.1
  Downloading opentelemetry_exporter_otlp_proto_common-1.34.1-py3-none-any.whl (18 kB)
Collecting protobuf<7,>=3.20
  Downloading protobuf-5.29.5-cp39-cp39-win_amd64.whl (434 kB)
     |████████████████████████████████| 434 kB 1.7 MB/s
Collecting opentelemetry-util-http==0.55b1
  Downloading opentelemetry_util_http-0.55b1-py3-none-any.whl (7.3 kB)
Collecting opentelemetry-semantic-conventions==0.55b1
  Downloading opentelemetry_semantic_conventions-0.55b1-py3-none-any.whl (196 kB)
     |████████████████████████████████| 196 kB 1.6 MB/s
Collecting opentelemetry-instrumentation-asgi==0.55b1
  Downloading opentelemetry_instrumentation_asgi-0.55b1-py3-none-any.whl (16 kB)
Collecting opentelemetry-instrumentation==0.55b1
  Downloading opentelemetry_instrumentation-0.55b1-py3-none-any.whl (31 kB)
Requirement already satisfied: wrapt<2.0.0,>=1.0.0 in c:\users\jacke\anaconda3\lib\site-packages (from opentelemetry-instrumentation==0.55b1->opentelemetry-instrumentation-fastapi>=0.4
1b0->chromadb==0.5.4->-r C:/ai-aws/workshop/setup/requirements.txt (line 8)) (1.12.1)
Collecting asgiref~=3.0
  Downloading asgiref-3.8.1-py3-none-any.whl (23 kB)
Requirement already satisfied: pytz>=2020.1 in c:\users\jacke\anaconda3\lib\site-packages (from pandas<3,>=1.4.0->streamlit->-r C:/ai-aws/workshop/setup/requirements.txt (line 13)) (20
21.3)
Collecting backoff>=1.10.0
  Downloading backoff-2.2.1-py3-none-any.whl (15 kB)
Requirement already satisfied: pyasn1<0.5.0,>=0.4.6 in c:\users\jacke\anaconda3\lib\site-packages (from pyasn1-modules>=0.2.1->google-auth>=1.0.1->kubernetes>=28.1.0->chromadb==0.5.4->
-r C:/ai-aws/workshop/setup/requirements.txt (line 8)) (0.4.8)
Collecting annotated-types>=0.6.0
  Downloading annotated_types-0.7.0-py3-none-any.whl (13 kB)
Collecting pydantic-core==2.33.2
  Downloading pydantic_core-2.33.2-cp39-cp39-win_amd64.whl (2.0 MB)
     |████████████████████████████████| 2.0 MB 368 kB/s
Collecting typing-inspection>=0.4.0
  Downloading typing_inspection-0.4.1-py3-none-any.whl (14 kB)
Requirement already satisfied: MarkupSafe>=0.23 in c:\users\jacke\anaconda3\lib\site-packages (from jinja2->altair<6,>=4.0->streamlit->-r C:/ai-aws/workshop/setup/requirements.txt (lin
e 13)) (2.0.1)
Requirement already satisfied: charset-normalizer~=2.0.0 in c:\users\jacke\anaconda3\lib\site-packages (from requests<3,>=2->langchain-community==0.0.31->-r C:/ai-aws/workshop/setup/re
quirements.txt (line 11)) (2.0.4)
Requirement already satisfied: greenlet!=0.4.17 in c:\users\jacke\anaconda3\lib\site-packages (from SQLAlchemy<3,>=1.4->langchain-community==0.0.31->-r C:/ai-aws/workshop/setup/require
ments.txt (line 11)) (1.1.1)
Collecting anyio<5,>=3.5.0
  Downloading anyio-4.9.0-py3-none-any.whl (100 kB)
     |████████████████████████████████| 100 kB 1.6 MB/s
Collecting exceptiongroup>=1.0.2
  Downloading exceptiongroup-1.3.0-py3-none-any.whl (16 kB)
Collecting shellingham>=1.3.0
  Downloading shellingham-1.5.4-py2.py3-none-any.whl (9.8 kB)
Collecting rich>=10.11.0
  Downloading rich-14.0.0-py3-none-any.whl (243 kB)
     |████████████████████████████████| 243 kB 2.2 MB/s
Collecting pygments<3.0.0,>=2.13.0
  Downloading pygments-2.19.2-py3-none-any.whl (1.2 MB)
     |████████████████████████████████| 1.2 MB 1.7 MB/s
Collecting markdown-it-py>=2.2.0
  Downloading markdown_it_py-3.0.0-py3-none-any.whl (87 kB)
     |████████████████████████████████| 87 kB 1.5 MB/s
Collecting mdurl~=0.1
  Downloading mdurl-0.1.2-py3-none-any.whl (10.0 kB)
Requirement already satisfied: mypy-extensions>=0.3.0 in c:\users\jacke\anaconda3\lib\site-packages (from typing-inspect<1,>=0.4.0->dataclasses-json<0.7,>=0.5.7->langchain-community==0
.0.31->-r C:/ai-aws/workshop/setup/requirements.txt (line 11)) (0.4.3)
Collecting httptools>=0.6.3
  Downloading httptools-0.6.4-cp39-cp39-win_amd64.whl (89 kB)
     |████████████████████████████████| 89 kB 2.0 MB/s
Collecting watchfiles>=0.13
  Downloading watchfiles-1.1.0-cp39-cp39-win_amd64.whl (292 kB)
     |████████████████████████████████| 292 kB 2.2 MB/s
Collecting python-dotenv>=0.13
  Downloading python_dotenv-1.1.0-py3-none-any.whl (20 kB)
Collecting websockets>=10.4
  Downloading websockets-15.0.1-cp39-cp39-win_amd64.whl (176 kB)
     |████████████████████████████████| 176 kB 2.2 MB/s
Collecting humanfriendly>=9.1
  Downloading humanfriendly-10.0-py2.py3-none-any.whl (86 kB)
     |████████████████████████████████| 86 kB 3.0 MB/s
Collecting pyreadline3
  Downloading pyreadline3-3.5.4-py3-none-any.whl (83 kB)
     |████████████████████████████████| 83 kB 2.0 MB/s
Requirement already satisfied: mpmath>=0.19 in c:\users\jacke\anaconda3\lib\site-packages (from sympy->onnxruntime>=1.14.1->chromadb==0.5.4->-r C:/ai-aws/workshop/setup/requirements.tx
t (line 8)) (1.2.1)
Building wheels for collected packages: pypika
  Building wheel for pypika (PEP 517) ... done
  Created wheel for pypika: filename=pypika-0.48.9-py2.py3-none-any.whl size=53916 sha256=06fda6d3a91b7552d5fda7a5d7c8a30bc8ef1e6c5465e9e4ab675f753c49822e
  Stored in directory: c:\users\jacke\appdata\local\pip\cache\wheels\f7\02\64\d541eac67ec459309d1fb19e727f58ecf7ffb4a8bf42d4cfe5
Successfully built pypika
Installing collected packages: zipp, typing-extensions, importlib-metadata, h11, exceptiongroup, typing-inspection, pydantic-core, opentelemetry-api, httpcore, anyio, annotated-types, 
requests-toolbelt, pyreadline3, pydantic, protobuf, propcache, packaging, orjson, opentelemetry-semantic-conventions, mdurl, jsonpointer, httpx, yarl, typing-inspect, tqdm, tenacity, s
mmap, pygments, opentelemetry-util-http, opentelemetry-proto, opentelemetry-instrumentation, oauthlib, marshmallow, markdown-it-py, langsmith, jsonpatch, humanfriendly, fsspec, asgiref
, aiohappyeyeballs, websockets, watchfiles, uvicorn, starlette, shellingham, rich, requests-oauthlib, python-dotenv, pyproject-hooks, opentelemetry-sdk, opentelemetry-instrumentation-a
sgi, opentelemetry-exporter-otlp-proto-common, numpy, narwhals, langchain-core, huggingface-hub, httptools, grpcio, gitdb, flatbuffers, durationpy, distro, dataclasses-json, coloredlog
s, botocore, backoff, aiohttp, typer, tokenizers, safetensors, s3transfer, pypika, pydeck, pyarrow, posthog, Pillow, overrides, opentelemetry-instrumentation-fastapi, opentelemetry-exp
orter-otlp-proto-grpc, onnxruntime, mmh3, langchain-text-splitters, langchain-community, kubernetes, jiter, importlib-resources, gitpython, fastapi, docutils, chroma-hnswlib, build, bl
inker, bcrypt, altair, transformers, streamlit, pypdf, langchain, jq, faiss-cpu, chromadb, boto3, awscli, anthropic
  Attempting uninstall: zipp
    Found existing installation: zipp 3.7.0
    Uninstalling zipp-3.7.0:
      Successfully uninstalled zipp-3.7.0
  Attempting uninstall: typing-extensions
    Found existing installation: typing-extensions 4.1.1
    Uninstalling typing-extensions-4.1.1:
      Successfully uninstalled typing-extensions-4.1.1
  Attempting uninstall: importlib-metadata
    Found existing installation: importlib-metadata 4.11.3
    Uninstalling importlib-metadata-4.11.3:
      Successfully uninstalled importlib-metadata-4.11.3
  Attempting uninstall: anyio
    Found existing installation: anyio 3.5.0
    Uninstalling anyio-3.5.0:
      Successfully uninstalled anyio-3.5.0
  Attempting uninstall: protobuf
    Found existing installation: protobuf 3.19.1
    Uninstalling protobuf-3.19.1:
      Successfully uninstalled protobuf-3.19.1
  Attempting uninstall: packaging
    Found existing installation: packaging 21.3
    Uninstalling packaging-21.3:
      Successfully uninstalled packaging-21.3
  Attempting uninstall: yarl
    Found existing installation: yarl 1.6.3
    Uninstalling yarl-1.6.3:
      Successfully uninstalled yarl-1.6.3
  Attempting uninstall: tqdm
    Found existing installation: tqdm 4.64.0
    Uninstalling tqdm-4.64.0:
      Successfully uninstalled tqdm-4.64.0
  Attempting uninstall: tenacity
    Found existing installation: tenacity 8.0.1
    Uninstalling tenacity-8.0.1:
      Successfully uninstalled tenacity-8.0.1
  Attempting uninstall: pygments
    Found existing installation: Pygments 2.11.2
    Uninstalling Pygments-2.11.2:
      Successfully uninstalled Pygments-2.11.2
  Attempting uninstall: fsspec
    Found existing installation: fsspec 2022.2.0
    Uninstalling fsspec-2022.2.0:
      Successfully uninstalled fsspec-2022.2.0
  Attempting uninstall: numpy
    Found existing installation: numpy 1.21.5
    Uninstalling numpy-1.21.5:
      Successfully uninstalled numpy-1.21.5
  Attempting uninstall: grpcio
    Found existing installation: grpcio 1.42.0
    Uninstalling grpcio-1.42.0:
      Successfully uninstalled grpcio-1.42.0
  Attempting uninstall: botocore
    Found existing installation: botocore 1.24.32
    Uninstalling botocore-1.24.32:
      Successfully uninstalled botocore-1.24.32
  Attempting uninstall: aiohttp
    Found existing installation: aiohttp 3.8.1
    Uninstalling aiohttp-3.8.1:
      Successfully uninstalled aiohttp-3.8.1
  Attempting uninstall: s3transfer
    Found existing installation: s3transfer 0.5.0
    Uninstalling s3transfer-0.5.0:
      Successfully uninstalled s3transfer-0.5.0
  Attempting uninstall: Pillow
    Found existing installation: Pillow 9.0.1
    Uninstalling Pillow-9.0.1:
      Successfully uninstalled Pillow-9.0.1
  Attempting uninstall: docutils
    Found existing installation: docutils 0.17.1
    Uninstalling docutils-0.17.1:
      Successfully uninstalled docutils-0.17.1
  Attempting uninstall: bcrypt
    Found existing installation: bcrypt 3.2.0
    Uninstalling bcrypt-3.2.0:
      Successfully uninstalled bcrypt-3.2.0
  Attempting uninstall: boto3
    Found existing installation: boto3 1.21.32
    Uninstalling boto3-1.21.32:
      Successfully uninstalled boto3-1.21.32
ERROR: pip's dependency resolver does not currently take into account all the packages that are installed. This behaviour is the source of the following dependency conflicts.
spyder 5.1.5 requires pyqt5<5.13, which is not installed.
spyder 5.1.5 requires pyqtwebengine<5.13, which is not installed.
daal4py 2021.5.0 requires daal==2021.4.0, which is not installed.
sphinx 4.4.0 requires docutils<0.18,>=0.14, but you have docutils 0.19 which is incompatible.
scipy 1.7.3 requires numpy<1.23.0,>=1.16.5, but you have numpy 1.26.4 which is incompatible.
numba 0.55.1 requires numpy<1.22,>=1.18, but you have numpy 1.26.4 which is incompatible.
mysql-connector-python 8.0.30 requires protobuf<=3.20.1,>=3.11.0, but you have protobuf 5.29.5 which is incompatible.
jupyter-server 1.13.5 requires anyio<4,>=3.1.0, but you have anyio 4.9.0 which is incompatible.
jupyter-server 1.13.5 requires pywinpty<2; os_name == "nt", but you have pywinpty 2.0.2 which is incompatible.
Successfully installed Pillow-11.2.1 aiohappyeyeballs-2.6.1 aiohttp-3.12.13 altair-5.5.0 annotated-types-0.7.0 anthropic-0.54.0 anyio-4.9.0 asgiref-3.8.1 awscli-1.40.40 backoff-2.2.1 b
crypt-4.3.0 blinker-1.9.0 boto3-1.38.41 botocore-1.38.41 build-1.2.2.post1 chroma-hnswlib-0.7.5 chromadb-0.5.4 coloredlogs-15.0.1 dataclasses-json-0.6.7 distro-1.9.0 docutils-0.19 dura
tionpy-0.10 exceptiongroup-1.3.0 faiss-cpu-1.11.0 fastapi-0.115.13 flatbuffers-25.2.10 fsspec-2025.5.1 gitdb-4.0.12 gitpython-3.1.44 grpcio-1.73.0 h11-0.16.0 httpcore-1.0.9 httptools-0
.6.4 httpx-0.28.1 huggingface-hub-0.33.0 humanfriendly-10.0 importlib-metadata-8.7.0 importlib-resources-6.5.2 jiter-0.10.0 jq-1.9.1 jsonpatch-1.33 jsonpointer-3.0.0 kubernetes-33.1.0 
langchain-0.1.13 langchain-community-0.0.31 langchain-core-0.1.40 langchain-text-splitters-0.0.1 langsmith-0.1.147 markdown-it-py-3.0.0 marshmallow-3.26.1 mdurl-0.1.2 mmh3-5.1.0 narwha
ls-1.43.1 numpy-1.26.4 oauthlib-3.3.1 onnxruntime-1.19.2 opentelemetry-api-1.34.1 opentelemetry-exporter-otlp-proto-common-1.34.1 opentelemetry-exporter-otlp-proto-grpc-1.34.1 opentele
metry-instrumentation-0.55b1 opentelemetry-instrumentation-asgi-0.55b1 opentelemetry-instrumentation-fastapi-0.55b1 opentelemetry-proto-1.34.1 opentelemetry-sdk-1.34.1 opentelemetry-se
mantic-conventions-0.55b1 opentelemetry-util-http-0.55b1 orjson-3.10.18 overrides-7.7.0 packaging-23.2 posthog-5.4.0 propcache-0.3.2 protobuf-5.29.5 pyarrow-20.0.0 pydantic-2.11.7 pyda
ntic-core-2.33.2 pydeck-0.9.1 pygments-2.19.2 pypdf-5.6.0 pypika-0.48.9 pyproject-hooks-1.2.0 pyreadline3-3.5.4 python-dotenv-1.1.0 requests-oauthlib-2.0.0 requests-toolbelt-1.0.0 rich
-14.0.0 s3transfer-0.13.0 safetensors-0.5.3 shellingham-1.5.4 smmap-5.0.2 starlette-0.46.2 streamlit-1.46.0 tenacity-8.5.0 tokenizers-0.21.1 tqdm-4.67.1 transformers-4.52.4 typer-0.16.
0 typing-extensions-4.14.0 typing-inspect-0.9.0 typing-inspection-0.4.1 uvicorn-0.34.3 watchfiles-1.1.0 websockets-15.0.1 yarl-1.20.1 zipp-3.23.0
